-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2019 at 01:52 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `profile_picture` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `description`) VALUES
(1, 'https://yt3.ggpht.com/a/AGF-l7-RHiKbEPc53nHsAkezq9Ad8nr8c7vgQdiqFg=s800-c-k-c0xffffffff-no-rj-mo', 'nbagleague', 'The NBA G League, the NBA\'s official minor league, streams over 500 live games on NBAGLeague.com and the NBA G League app. Fans can get a glimpse at the players, coaches and officials competing to ascend to the NBA. With 30 percent of players on start-of-season NBA rosters boasting NBA G League experience when the 2016-17 season tipped off in October, the NBA G League is the best place to see the future now.\n\nThe NBA G League consists of 26 teams for the 2017-18 season, all singly affiliated with an NBA franchise, including four new expansion teams that are affiliates of the Atlanta Hawks, L.A. Clippers, Memphis Grizzlies and Milwaukee Bucks. Click here to view the franchise map: gleague.nba.com/franchise-map/\n\nVisit us on the web: http://www.NBAGLeague.com\nLike us on Facebook: http://www.facebook.com/nbagleague\nFollow us on Twitter: http://www.twitter.com/nbagleague\nFollow us on Instagram: http://www.instagram.com/nbagleague');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `video_url` text NOT NULL,
  `youtube_channel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `title`, `thumbnail`, `video_url`, `youtube_channel_id`) VALUES
(1, 'Fred VanVleet&#39;s BEST Plays of the 2019 NBA Finals', 'https://i.ytimg.com/vi/XGpXM6pzNBQ/default.jpg', 'https://www.youtube.com/watch?v=XGpXM6pzNBQ', 1),
(2, 'Top Assists of April', 'https://i.ytimg.com/vi/ZPvpuT-OfJc/default.jpg', 'https://www.youtube.com/watch?v=ZPvpuT-OfJc', 1),
(3, 'Top Blocks of April', 'https://i.ytimg.com/vi/PYCmnsOSAl8/default.jpg', 'https://www.youtube.com/watch?v=PYCmnsOSAl8', 1),
(4, 'Top Dunks of April', 'https://i.ytimg.com/vi/ZWwqn7NMSPc/default.jpg', 'https://www.youtube.com/watch?v=ZWwqn7NMSPc', 1),
(5, 'Isaiah Hartenstein NBA G League Highlights: April 2019', 'https://i.ytimg.com/vi/wP0CbYQZHwo/default.jpg', 'https://www.youtube.com/watch?v=wP0CbYQZHwo', 1),
(6, 'Alan Williams Top Blocks of the Month: April 2019', 'https://i.ytimg.com/vi/t5g9VAlwYMg/default.jpg', 'https://www.youtube.com/watch?v=t5g9VAlwYMg', 1),
(7, 'Top Plays of the Week', 'https://i.ytimg.com/vi/GI_vkHwHLTg/default.jpg', 'https://www.youtube.com/watch?v=GI_vkHwHLTg', 1),
(8, 'Top Dunks of the Week', 'https://i.ytimg.com/vi/aikiETvaOZc/default.jpg', 'https://www.youtube.com/watch?v=aikiETvaOZc', 1),
(9, 'Top Plays of the Day - 04/12/2019', 'https://i.ytimg.com/vi/g-H9wzknoJM/default.jpg', 'https://www.youtube.com/watch?v=g-H9wzknoJM', 1),
(10, 'Isaiah Hartenstein with 30 Points vs. Long Island Nets', 'https://i.ytimg.com/vi/uwbCCytFBhQ/default.jpg', 'https://www.youtube.com/watch?v=uwbCCytFBhQ', 1),
(11, 'Dakarai Tucker with 24 Points vs. Long Island Nets', 'https://i.ytimg.com/vi/eH5oj9XG39s/default.jpg', 'https://www.youtube.com/watch?v=eH5oj9XG39s', 1),
(12, 'Michael Frazier with 24 Points vs. Long Island Nets', 'https://i.ytimg.com/vi/7Ym0bD3WGoQ/default.jpg', 'https://www.youtube.com/watch?v=7Ym0bD3WGoQ', 1),
(13, 'Dzanan Musa with 24 Points vs. Rio Grande Valley Vipers', 'https://i.ytimg.com/vi/JvQA9gXtOaQ/default.jpg', 'https://www.youtube.com/watch?v=JvQA9gXtOaQ', 1),
(14, 'Alan Williams with 26 Points vs. Rio Grande Valley Vipers', 'https://i.ytimg.com/vi/egaS9-cgICE/default.jpg', 'https://www.youtube.com/watch?v=egaS9-cgICE', 1),
(15, 'Lakers&#39; Alex Caruso TOP PLAYS with South Bay &amp; Los Angeles!', 'https://i.ytimg.com/vi/BvvH2FXDODE/default.jpg', 'https://www.youtube.com/watch?v=BvvH2FXDODE', 1),
(16, 'Top Plays of the Day - 04/09/2019', 'https://i.ytimg.com/vi/oFQT7PU0lQc/default.jpg', 'https://www.youtube.com/watch?v=oFQT7PU0lQc', 1),
(17, 'Rio Grande Valley Vipers Top 3-pointers vs. Long Island Nets', 'https://i.ytimg.com/vi/cGp93xhxWO0/default.jpg', 'https://www.youtube.com/watch?v=cGp93xhxWO0', 1),
(18, 'Alan Williams (17 points) Highlights vs. Rio Grande Valley Vipers', 'https://i.ytimg.com/vi/bcoMnjJr46Y/default.jpg', 'https://www.youtube.com/watch?v=bcoMnjJr46Y', 1),
(19, 'Alan Williams (17 points) Highlights vs. Rio Grande Valley Vipers', 'https://i.ytimg.com/vi/R4ZU1aSFK30/default.jpg', 'https://www.youtube.com/watch?v=R4ZU1aSFK30', 1),
(20, 'Isaiah Hartenstein with 33 Points vs. Long Island Nets', 'https://i.ytimg.com/vi/hK7YyslDbzk/default.jpg', 'https://www.youtube.com/watch?v=hK7YyslDbzk', 1),
(21, 'Isaiah Hartenstein (33 points) Highlights vs. Long Island Nets', 'https://i.ytimg.com/vi/sf242_my_K4/default.jpg', 'https://www.youtube.com/watch?v=sf242_my_K4', 1),
(22, 'Thomas Wimbush with 21 Points vs. Rio Grande Valley Vipers', 'https://i.ytimg.com/vi/kbvFs1Znw4g/default.jpg', 'https://www.youtube.com/watch?v=kbvFs1Znw4g', 1),
(23, 'Game 1 of NBA G League Finals: Long Island Nets vs. Rio Grande Valley Vipers - Condensed Game', 'https://i.ytimg.com/vi/mLBFtE07ZDs/default.jpg', 'https://www.youtube.com/watch?v=mLBFtE07ZDs', 1),
(24, '2018-19 All-NBA G League First Team Highlights', 'https://i.ytimg.com/vi/gMgWiLk7OB8/default.jpg', 'https://www.youtube.com/watch?v=gMgWiLk7OB8', 1),
(25, 'Raptors&#39; Chris Boucher&#39;s ULTIMATE NBA G League MVP &amp; DPOY Season Highlight Mix!', 'https://i.ytimg.com/vi/hWSZSEVBX0c/default.jpg', 'https://www.youtube.com/watch?v=hWSZSEVBX0c', 1),
(26, 'Chris Boucher&#39;s Inspiring NBA Journey From G League Star to Toronto Raptor', 'https://i.ytimg.com/vi/dNmprnLBJoY/default.jpg', 'https://www.youtube.com/watch?v=dNmprnLBJoY', 1),
(27, 'Brandon Goodwin Top Assists of the Month: March 2019', 'https://i.ytimg.com/vi/GROadDOctFg/default.jpg', 'https://www.youtube.com/watch?v=GROadDOctFg', 1),
(28, 'Dwayne Bacon NBA G League Highlights: March 2019', 'https://i.ytimg.com/vi/XKBnRUciNgI/default.jpg', 'https://www.youtube.com/watch?v=XKBnRUciNgI', 1),
(29, 'Jameel Warney with 26 Points vs. Erie BayHawks', 'https://i.ytimg.com/vi/NZoNKFIfOAI/default.jpg', 'https://www.youtube.com/watch?v=NZoNKFIfOAI', 1),
(30, 'Alize Johnson with 34 Points vs. Grand Rapids Drive', 'https://i.ytimg.com/vi/dnWtfYMD8-k/default.jpg', 'https://www.youtube.com/watch?v=dnWtfYMD8-k', 1),
(31, 'Salt Lake City Stars vs. Iowa Wolves - Condensed Game', 'https://i.ytimg.com/vi/94LxsSd91b0/default.jpg', 'https://www.youtube.com/watch?v=94LxsSd91b0', 1),
(32, 'Stephan Hicks with 25 Points vs. Greensboro Swarm', 'https://i.ytimg.com/vi/FD1fmCyyhw0/default.jpg', 'https://www.youtube.com/watch?v=FD1fmCyyhw0', 1),
(33, 'Jimmer Fredette&#39;s NBA G League CAREER HIGHLIGHTS with Westchester Knicks!', 'https://i.ytimg.com/vi/jPPM6xCu66k/default.jpg', 'https://www.youtube.com/watch?v=jPPM6xCu66k', 1),
(34, 'Hakim Warrick with 22 Points vs. Northern Arizona Suns', 'https://i.ytimg.com/vi/_OOae2hESWY/default.jpg', 'https://www.youtube.com/watch?v=_OOae2hESWY', 1),
(35, 'Brandon Goodwin with 24 Points vs. Northern Arizona Suns', 'https://i.ytimg.com/vi/LgPx-Xdp5Jw/default.jpg', 'https://www.youtube.com/watch?v=LgPx-Xdp5Jw', 1),
(36, 'Duncan Robinson (36 points) Highlights vs. Oklahoma City Blue', 'https://i.ytimg.com/vi/5LKMB4melds/default.jpg', 'https://www.youtube.com/watch?v=5LKMB4melds', 1),
(37, 'Alize Johnson with 20 Points vs. Wisconsin Herd', 'https://i.ytimg.com/vi/cbq0g7hec-0/default.jpg', 'https://www.youtube.com/watch?v=cbq0g7hec-0', 1),
(38, 'Iowa Wolves vs. Wisconsin Herd - Condensed Game', 'https://i.ytimg.com/vi/3P-7g-_J6xY/default.jpg', 'https://www.youtube.com/watch?v=3P-7g-_J6xY', 1),
(39, 'C.J. Williams with 22 Points vs. Wisconsin Herd', 'https://i.ytimg.com/vi/fo7rrgNQZjs/default.jpg', 'https://www.youtube.com/watch?v=fo7rrgNQZjs', 1),
(40, 'Brandon Goodwin with 28 Points vs. Wisconsin Herd', 'https://i.ytimg.com/vi/kev7z5oqRcI/default.jpg', 'https://www.youtube.com/watch?v=kev7z5oqRcI', 1),
(41, 'Marquise Moore with 20 Points vs. Wisconsin Herd', 'https://i.ytimg.com/vi/xDwVabGrCV4/default.jpg', 'https://www.youtube.com/watch?v=xDwVabGrCV4', 1),
(42, 'MiKyle McIntosh with 25 Points vs. Delaware Blue Coats', 'https://i.ytimg.com/vi/DJpsPMnnl6s/default.jpg', 'https://www.youtube.com/watch?v=DJpsPMnnl6s', 1),
(43, 'Northern Arizona Suns vs. Greensboro Swarm - Condensed Game', 'https://i.ytimg.com/vi/A9aSSOiShqE/default.jpg', 'https://www.youtube.com/watch?v=A9aSSOiShqE', 1),
(44, 'Iowa Wolves vs. Austin Spurs - Condensed Game', 'https://i.ytimg.com/vi/f3Rvdw_o2y4/default.jpg', 'https://www.youtube.com/watch?v=f3Rvdw_o2y4', 1),
(45, 'Hakim Warrick with 18 Points vs. Austin Spurs', 'https://i.ytimg.com/vi/HE_wm9mPvvE/default.jpg', 'https://www.youtube.com/watch?v=HE_wm9mPvvE', 1),
(46, 'Alfonzo McKinnie&#39;s NBA Journey From Undrafted, NBA G League Tryout Player to the Warriors', 'https://i.ytimg.com/vi/jfOAJ2Axcf4/default.jpg', 'https://www.youtube.com/watch?v=jfOAJ2Axcf4', 1),
(47, 'Devonte&#39; Graham (Hornets/Swarm Rookie) TOP PLAYS in the NBA G League!', 'https://i.ytimg.com/vi/BWWqDbGLIy8/default.jpg', 'https://www.youtube.com/watch?v=BWWqDbGLIy8', 1),
(48, 'Kadeem Allen with 20 Points vs. Maine Red Claws', 'https://i.ytimg.com/vi/2aCQ101dNEs/default.jpg', 'https://www.youtube.com/watch?v=2aCQ101dNEs', 1),
(49, 'Austin Spurs vs. Raptors 905 - Condensed Game', 'https://i.ytimg.com/vi/1o-CRSWCzzQ/default.jpg', 'https://www.youtube.com/watch?v=1o-CRSWCzzQ', 1),
(50, 'AntetokounBROS: Kostas Following Thanasis &amp; Giannis Antetokounmpo&#39;s Footsteps to NBA!', 'https://i.ytimg.com/vi/JCxS9G85j6U/default.jpg', 'https://www.youtube.com/watch?v=JCxS9G85j6U', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `youtube_channel_id` (`youtube_channel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD CONSTRAINT `youtube_channel_videos_ibfk_1` FOREIGN KEY (`youtube_channel_id`) REFERENCES `youtube_channels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
