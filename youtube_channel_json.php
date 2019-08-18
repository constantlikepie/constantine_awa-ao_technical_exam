<?php

header('Content-Type: application/json');
require './config/DB.php';
	
	if(!isset($_GET['channel_id']))
		die("Invalid channel id");
	$channel_id = $_GET['channel_id'];

	$query = "SELECT * FROM youtube_channels WHERE id = :channel_id";

	$channels;
	try{

		$db = new DB();

		$db = $db->connect();

		$statement = $db->prepare($query);

		$statement->bindParam(':channel_id', $channel_id);

		$statement->execute();

		$channel_details = $statement->fetch();

		$db = null;

		//print($channel_details["id"]);

	}catch(PDOException $e){
		die($e);
	}

	$query = "SELECT * FROM youtube_channel_videos WHERE youtube_channel_id = :channel_id";
	$channels;
	try{

		$db = new DB();

		$db = $db->connect();

		$statement = $db->prepare($query);

		$statement->bindParam(':channel_id', $channel_details["id"]);

		$statement->execute();

		$channel_videos = $statement->fetchAll(PDO::FETCH_OBJ);
		$channel_details["videos"] = $channel_videos;

		print(json_encode($channel_details));

		$db = null;

	}catch(PDOException $e){
		die($e);
	}
?>