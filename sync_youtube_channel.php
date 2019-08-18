<?php

	require './config/DB.php';

	if(!isset($_GET['channel_id']))
		die("Please provide channel id.");
	if(!isset($_GET['token']))
		die("Something went wrong.");

	$YT_CHANNEL_ID = $_GET['channel_id'];
	$SYNC_DATA_TOKEN = "constantineawa-ao";
	$YT_API_KEY = 'AIzaSyA5eKz-2GN19ZJ2Swa4nKq_zfzbIN34VnA';
	// used 50 since that's the allowed for maximum result, tried 100 but gave it gave me a warning
	$videos_count_to_read = 50;
	$YT_WATCH_LINK = 'https://www.youtube.com/watch?v=';

	$lemmesync = isset($_GET['token']) && $_GET['token'] == $SYNC_DATA_TOKEN;

	$channel_id;

	if($lemmesync)
	{
		$channel_data = json_decode(@file_get_contents('https://www.googleapis.com/youtube/v3/channels?part=snippet&id='.$YT_CHANNEL_ID.'&key='.$YT_API_KEY));
		
		if(is_null($channel_data))
			die("Invalid channel ID or token given.");

		$channel_profile_picture = $channel_data->items[0]->snippet->thumbnails->high->url;
		$channel_title = $channel_data->items[0]->snippet->title;
		$channel_description = $channel_data->items[0]->snippet->description;

		$query = 'INSERT INTO youtube_channels (profile_picture, name, description) VALUES (:channel_profile_picture, :channel_title, :channel_description)';

		try{

			$db = new DB();

			$db = $db->connect();

			$statement = $db->prepare($query);

			$statement->bindParam(':channel_profile_picture', $channel_profile_picture);
			$statement->bindParam(':channel_title', $channel_title);
			$statement->bindParam(':channel_description', $channel_description);

			$statement->execute();
			$channel_id = $db->lastInsertId();
			$db = null;

		}catch(PDOException $e){
			die($e);
		}

		$videos = json_decode(file_get_contents('https://www.googleapis.com/youtube/v3/search?order=date&part=snippet&channelId='.$YT_CHANNEL_ID.'&maxResults='.$videos_count_to_read.'&key='.$YT_API_KEY));

		$videos = $videos->items;


		foreach ($videos as $key => $value)
		{
			$video_title = $value->snippet->title;
			$video_thumbnail = $value->snippet->thumbnails->default->url;
			$video_url = $YT_WATCH_LINK.$value->id->videoId;

			$query = 'INSERT INTO youtube_channel_videos (title, thumbnail, video_url, youtube_channel_id) VALUES (:video_title, :video_thumbnail, :video_url, :channel_id)';

			try{
				$db = new DB();
				$db = $db->connect();

				$statement = $db->prepare($query);

				$statement->bindParam(':video_title', $video_title);
				$statement->bindParam(':video_thumbnail', $video_thumbnail);
				$statement->bindParam(':video_url', $video_url);
				$statement->bindParam(':channel_id', $channel_id);

				$statement->execute();

						$db = null;

					}catch(PDOException $e){
						die($e);
					}
		}
		header("Location: http://localhost/technical_exam/show_youtube_channel.html?channel_id=".$channel_id);
	}
	else
		die("Trying to sync some data? Nope. Gimme the token first.");

