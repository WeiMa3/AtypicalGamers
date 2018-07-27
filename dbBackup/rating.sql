-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gameRating
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gameInfo`
--

DROP TABLE IF EXISTS `gameInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameInfo` (
  `idgameInfo` int(11) NOT NULL AUTO_INCREMENT,
  `gameName` varchar(45) DEFAULT NULL,
  `totalScore` varchar(45) DEFAULT NULL,
  `ratingCount` varchar(45) DEFAULT NULL,
  `developer` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `platform` varchar(45) DEFAULT NULL,
  `releaseDate` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `mode` varchar(45) DEFAULT NULL,
  `cover_url` varchar(200) DEFAULT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `gameplay` mediumtext,
  `slide_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idgameInfo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameInfo`
--

LOCK TABLES `gameInfo` WRITE;
/*!40000 ALTER TABLE `gameInfo` DISABLE KEYS */;
INSERT INTO `gameInfo` VALUES (1,'The Legend of Zelda: Breath of the Wild','29','3','Nintendo EPD','Nintendo','Eiji Aonuma','NS,WiiU','March 3, 2017','Action-adventure, Open-world','Single-player','/rating/img/zelda_s.jpg','https://www.youtube.com/embed/zw47_q9wbBE','<p><img src=\"/rating/img/zelda_p1.jpg\"><br><br>Breath of the Wild is an action-adventure game set in an open world environment where players are tasked with exploring the kingdom of Hyrule while controlling Link. In terms of structure, Breath of the Wild encourages non-linear gameplay, which is illustrated by the game\'s lack of defined entrances or exits to areas, scant instruction given to the player, and encouragement to explore freely. Breath of the Wild introduces a consistent physics engine to the Zelda series, letting players approach problems in different ways rather than trying to find a single solution. The game also integrates a \"chemistry engine\" that defines the physical properties of most objects and governs how they interact with the player and one another. For example, players may take advantage of the game\'s dynamic weather by throwing metal objects at enemies during thunderstorms to attract a lightning strike. These design approaches result in a generally unstructured and interactive world that rewards experimentation and allows for nonlinear completion of the story.<br><br><img src=\"/rating/img/zelda_p2.jpg\"><br><br>Through controlling Link, players can perform many actions such as running, climbing, swimming, and gliding with a paraglider, although he is limited by his stamina. In order to help him perform tasks, Link can procure items from the environment, including weapons, food, and other resources. Unlike previous Zelda games, weapons and shields will degrade over time. Many items have multiple uses; for example, wooden weapons and armor can be set to light fires or collect incoming enemy arrows, and shields can be used as makeshift snowboards. Players can obtain food from hunting animals, gathering wild fruit, or collecting parts of deceased enemies. By cooking combinations of food or materials, the player can create meals and elixirs that can replenish Link\'s health and stamina, or provide temporary status bonuses such as increased strength or weather resistance. An important tool in Link\'s arsenal is the \"Sheikah Slate\", which can be used to mark waypoints on a map. Over the course of the game, Link can collect powers to add to the Slate, including remote bombs, the ability to manipulate metal objects, form ice blocks on watery surfaces, and temporarily stopping objects in time. In combat, players can lock onto targets for more precise attacks, while certain button combinations allow for advanced offensive and defensive moves. Players may also defeat enemies without weapons, such as rolling boulders off cliffs into enemy camps.<br><br><img src=\"/rating/img/zelda_p3.jpg\"><br><br>Besides exploration, players can undergo quests or challenges to obtain certain benefits. Activating towers and shrines adds waypoints that the player may warp to at any time. Activating towers also adds territories to the map, although location names are not added until the player explores that area. Dotted throughout Hyrule are shrines that contain challenges ranging from puzzles to battles against robotic opponents. Clearing shrines earns Spirit Orbs, which can be traded for additional health or stamina points. Scattered across Hyrule are small puzzles that reveal Korok Seeds, which can be traded to expand inventory size for weapons, shields, and bows. Towns serve as hotspots for quests, sidequests and shops selling materials and clothing. Hikers and other travelers offer sidequests, hints, or conversation. Additionally, players can scan Amiibo figures against their console to summon items or call Link\'s horse Epona from previous Zelda games and Wolf Link from Twilight Princess.<p>','/rating/img/zelda_L.jpg'),(2,'Shadow of the Colossus (2018)','27','3','Bluepoint Games','Sony Interactive Entertainment','Kow Otani','PS4','February 6, 2018','Action-adventure','Single-player','/rating/img/colossus.jpg','https://www.youtube.com/embed/pdZQ98mWeto','The gameplay is nearly identical to the original version of the game, aside from reworked controls. Progression through Shadow of the Colossus occurs in cycles. Beginning at a central point in a landscape, the player seeks out and defeats a colossus, and is then returned to the central point to repeat the process. Most colossi are located in remote areas, such as atop cliffs or within ancient structures.','/rating/img/colossus_L.jpg'),(3,'Monster Hunter: World','18','2','	Capcom','	Capcom','Hironobu Takeshita','PS4,XOne,PC','January 26, 2018','Action role-playing','Single-player, multiplayer','/rating/img/MHW_s.jpg','https://www.youtube.com/embed/Qrz3zysD7cU','Monster Hunter: World is an open-world action role-playing game played from a third-person perspective. Similar to previous games in the series, the player takes the role of a player-created character who travels to the \"New World\", an unpopulated land mass filled with monsters, to join the Research Commission that study the land from their central command base of Astera. The Research Commission tasks the Hunter to hunt down and either kill or capture large monsters that roam outside Astera to both protect the Commission and to study the monsters there. The player\'s character does not have any intrinsic attributes, but instead these are determined by what equipment the character is equipped with. This includes a weapon, selected from the series\' fourteen archetypes (such as long sword, bow, or hammer), which then further defines the types of combat moves and abilities the player can use, and pieces of armor, which can lead to beneficial or detrimental combat skills if matched properly. While some basic equipment can be purchased using in-game money, most equipment is built from loot obtained by slaying or trapping monsters, rewards from completing quests, or items gathered while in the field. This creates a core loop of gameplay that has the player fight monsters they can beat to obtain the right loot to craft improved weapons and armor to allow them to face more powerful monsters and the potential for even better equipment.','/rating/img/MHW_L.jpg'),(4,'Detroit: Become Human','19','2','Quantic Dream','Sony Interactive Entertainment','Sophie Buhl','PS4','25 May 2018','Adventure Interactive-movie','Single-player','/rating/img/Detroit_s.jpg','https://www.youtube.com/embed/QD1pbWCJcKQ','Detroit: Become Human is an adventure game played from a third-person view, which is subject to a set and controllable perspective. There are multiple playable characters who can die as the story continues without them; as a result, there is no \"game over\" message following a character\'s death. The right analogue stick on the DualShock controller is used to interact with objects and observe one\'s surroundings, the left analogue stick is for movement, and R2 scans an environment for possible actions; the motion controls and touchpad are also employed. Via quick time events and dialogue decisions, the story will branch out depending on which choices are made. These can be viewed in a flowchart during and immediately after a given chapter; the player can rewind to certain points in the story to reshape decisions in the event of regret. Certain scenes feature countdowns, which force the player to think and act quickly. Magazines abound the levels for players to read. The playable characters are:','/rating/img/Detroit_L.jpg'),(5,'Persona 5','16','2','P-Studio','ATLUS','Katsura Hashino','PS4','April 4, 2017','Role-playing, social simulation','Single-player','/rating/img/P5.jpg','https://www.youtube.com/embed/RP-mvJE9EQM','Persona 5 is a role-playing game where the player takes on the role of a high school student who lives out a single year while attending school in modern-day Tokyo. The game is governed by a day-night cycle and weather systems that determine general behavior similar to a social simulation game. The year is punctuated by both scripted and random events — the protagonist attends school, can perform part-time jobs, and pursue leisure activities or create items for use in battle. These various activities raise character attributes, which in turn grant passive buffing effects during battle. When in the real world, the main protagonist can develop character relationships known as Confidants; an evolution of the Social Link system from Persona 3 and Persona 4. With this system, the main protagonist can converse with and improve his relationship with other characters he meets, with some leading to possible romances. Each relationship is symbolized by one of the Major Arcana of the Tarot card deck. Improving Confidant ranks with party members unlocks various abilities for use in combat, such as the \"Baton Pass\" ability, which allows the player to directly select another character after a critical hit while granting a temporary attack boost. Improving ranks with non-party Confidants grant other bonuses, such as giving access to new items and equipment and boosting experience point and yen gain.',NULL),(6,'Super Mario Odyssey','28','3','Nintendo EPD','Nintendo','Kenta Motokura','NS','October 27, 2017','Platform, action-adventure','Single-player, multiplayer','/rating/img/odyssey.jpg',NULL,NULL,NULL),(7,'The Binding of Isaac: Rebirth','23','3','Edmund McMillen','Edmund McMillen','Florian Himsl','PC,PS4,WiiU,XOne,NS','November 4, 2014','Roguelike','Single-player, multiplayer','/rating/img/isaac.jpg',NULL,NULL,NULL);
/*!40000 ALTER TABLE `gameInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamePlatform`
--

DROP TABLE IF EXISTS `gamePlatform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamePlatform` (
  `idgamePlatform` int(11) NOT NULL AUTO_INCREMENT,
  `gameId` varchar(45) DEFAULT NULL,
  `platformId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgamePlatform`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamePlatform`
--

LOCK TABLES `gamePlatform` WRITE;
/*!40000 ALTER TABLE `gamePlatform` DISABLE KEYS */;
INSERT INTO `gamePlatform` VALUES (1,'1','1'),(2,'1','2'),(3,'2','2');
/*!40000 ALTER TABLE `gamePlatform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platformNames`
--

DROP TABLE IF EXISTS `platformNames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platformNames` (
  `idplatformName` int(11) NOT NULL AUTO_INCREMENT,
  `platformName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idplatformName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platformNames`
--

LOCK TABLES `platformNames` WRITE;
/*!40000 ALTER TABLE `platformNames` DISABLE KEYS */;
INSERT INTO `platformNames` VALUES (1,'NS'),(2,'WiiU'),(3,'PS4'),(4,'XOne'),(5,'PC');
/*!40000 ALTER TABLE `platformNames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingScore`
--

DROP TABLE IF EXISTS `ratingScore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingScore` (
  `idratingScore` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `gameId` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idratingScore`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingScore`
--

LOCK TABLES `ratingScore` WRITE;
/*!40000 ALTER TABLE `ratingScore` DISABLE KEYS */;
INSERT INTO `ratingScore` VALUES (1,'1','1','9'),(2,'1','2','8'),(3,'2','1','10'),(4,'2','2','10'),(5,'3','1','10'),(6,'3','2','9');
/*!40000 ALTER TABLE `ratingScore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `idreview` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `gameId` varchar(45) DEFAULT NULL,
  `reviewContent` text,
  `postTime` datetime DEFAULT NULL,
  `like` varchar(45) DEFAULT NULL,
  `dislike` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idreview`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Wei','1','For decades now, Zelda games have been about what you can’t do as much as they are about what you can. You can’t pick up that rock until you find the Power Gloves. You can’t go swimming until you buy Zora’s Flippers. See that big gap? You can’t cross it until you get the Hookshot. Since Link to the Past, just about every Zelda game has followed this same rhythm: You start off in a narrow world that gradually expands as you make progress. You see a wall with cracks in it and make a mental note to come back once you snag some bombs. Your curiosity is piqued by what you can’t yet access, and every new dungeon brings with it a rush of dopamine as you wait to see what helpful new gadget you’ll find there and what kind of secrets it will let you discover.','2018-03-17 23:15:00','5','1'),(2,'Mario','1','Best Zelda game I\'ve ever played. love it so much','2018-03-19 12:52:00','2','0'),(3,'Wei','2','Good','2018-03-17 00:47:00','1','1');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userInfo`
--

DROP TABLE IF EXISTS `userInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userInfo` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `userPW` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `bio` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userInfo`
--

LOCK TABLES `userInfo` WRITE;
/*!40000 ALTER TABLE `userInfo` DISABLE KEYS */;
INSERT INTO `userInfo` VALUES (1,'Wei','password1','kittenv428@gmail.com','2018-07-17',NULL,NULL),(2,'Mario','password2','','2018-07-18',NULL,NULL);
/*!40000 ALTER TABLE `userInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-27 11:27:28
