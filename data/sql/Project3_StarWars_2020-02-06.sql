# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.18)
# Database: Project3_StarWars
# Generation Time: 2020-02-06 17:19:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table character_words
# ------------------------------------------------------------

DROP TABLE IF EXISTS `character_words`;

CREATE TABLE `character_words` (
  `id` bigint(20) DEFAULT NULL,
  `name` text COLLATE utf8mb4_general_ci,
  `A_New_Hope` bigint(20) DEFAULT NULL,
  `The_Empire_Strikes_Back` bigint(20) DEFAULT NULL,
  `Return_of_the_Jedi` bigint(20) DEFAULT NULL,
  `The_Phantom_Menace` bigint(20) DEFAULT NULL,
  `Attack_of_the_Clones` bigint(20) DEFAULT NULL,
  `Revenge_of_the_Sith` bigint(20) DEFAULT NULL,
  `The_Force_Awakens` bigint(20) DEFAULT NULL,
  `The_Last_Jedi` bigint(20) DEFAULT NULL,
  `Total` bigint(20) DEFAULT NULL,
  KEY `ix_character_words_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `character_words` WRITE;
/*!40000 ALTER TABLE `character_words` DISABLE KEYS */;

INSERT INTO `character_words` (`id`, `name`, `A_New_Hope`, `The_Empire_Strikes_Back`, `Return_of_the_Jedi`, `The_Phantom_Menace`, `Attack_of_the_Clones`, `Revenge_of_the_Sith`, `The_Force_Awakens`, `The_Last_Jedi`, `Total`)
VALUES
	(0,'Luke',2107,1021,952,0,0,0,0,876,4956),
	(1,'Han',1747,1575,942,0,0,0,1240,0,5504),
	(2,'C-3PO',1466,1135,984,0,345,0,212,0,4142),
	(3,'Obi-Wan',1012,0,240,558,1522,1481,0,0,4813),
	(4,'R2-D2',727,881,431,319,168,225,0,0,2751),
	(5,'Leia',618,767,420,0,0,0,237,356,2398),
	(6,'Darth Vader',485,649,391,0,0,430,0,0,1955),
	(7,'Tarkin',407,0,0,0,0,0,0,0,407),
	(8,'Owen Lars',320,0,0,0,0,0,0,0,320),
	(9,'Garven Dreis',213,0,0,0,0,0,0,0,213),
	(10,'Yoda',0,752,237,0,439,483,0,0,1911),
	(11,'Lando',0,606,375,0,0,0,0,0,981),
	(12,'Chewie',0,349,0,0,0,0,0,0,349),
	(13,'Piett',0,181,0,0,0,0,0,0,181),
	(14,'Palpatine',0,0,623,642,313,1446,0,0,3024),
	(15,'Qui-Gon',0,0,0,1832,0,0,0,0,1832),
	(16,'Anakin',0,0,0,1046,1525,1329,0,0,3900),
	(17,'PadmÃ©',0,0,0,905,0,0,0,0,905),
	(18,'Jar Jar',0,0,0,611,0,0,0,0,611),
	(19,'Watto',0,0,0,438,0,0,0,0,438),
	(20,'Nute',0,0,0,415,0,0,0,0,415),
	(21,'Capt. Panaka',0,0,0,331,0,0,0,0,331),
	(22,'Padme',0,0,0,0,1009,596,0,0,1605),
	(23,'Count Dooku',0,0,0,0,565,0,0,0,565),
	(24,'Mace Windu',0,0,0,0,286,368,0,0,654),
	(25,'Lama Su',0,0,0,0,257,0,0,0,257),
	(26,'Gen. Grievous',0,0,0,0,0,198,0,0,198),
	(27,'Bail Organa',0,0,0,0,0,177,0,0,177),
	(28,'Finn',0,0,0,0,0,0,1417,847,2264),
	(29,'Rey',0,0,0,0,0,0,1051,865,1916),
	(30,'Poe',0,0,0,0,0,0,627,1068,1695),
	(31,'Kylo Ren',0,0,0,0,0,0,585,495,1080),
	(32,'Gen. Hux',0,0,0,0,0,0,315,354,669),
	(33,'Maz',0,0,0,0,0,0,261,0,261),
	(34,'Bb-8',0,0,0,0,0,0,257,0,257),
	(35,'Rose',0,0,0,0,0,0,0,615,615),
	(36,'Snoke',0,0,0,0,0,0,0,470,470),
	(37,'Amilyn Holdo',0,0,0,0,0,0,0,294,294);

/*!40000 ALTER TABLE `character_words` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table characters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `characters`;

CREATE TABLE `characters` (
  `id` bigint(20) DEFAULT NULL,
  `name` text COLLATE utf8mb4_general_ci,
  `height` double DEFAULT NULL,
  `mass` float DEFAULT NULL,
  `hair_color` text COLLATE utf8mb4_general_ci,
  `skin_color` text COLLATE utf8mb4_general_ci,
  `eye_color` text COLLATE utf8mb4_general_ci,
  `birth_year` text COLLATE utf8mb4_general_ci,
  `gender` text COLLATE utf8mb4_general_ci,
  `homeworld` text COLLATE utf8mb4_general_ci,
  `species` text COLLATE utf8mb4_general_ci,
  KEY `ix_characters_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;

INSERT INTO `characters` (`id`, `name`, `height`, `mass`, `hair_color`, `skin_color`, `eye_color`, `birth_year`, `gender`, `homeworld`, `species`)
VALUES
	(0,'Luke Skywalker',172,77,'blond','fair','blue','19BBY','male','Tatooine','Human'),
	(1,'C-3PO',167,75,NULL,'gold','yellow','112BBY',NULL,'Tatooine','Droid'),
	(2,'R2-D2',96,32,NULL,'white, blue','red','33BBY',NULL,'Naboo','Droid'),
	(3,'Darth Vader',202,136,'none','white','yellow','41.9BBY','male','Tatooine','Human'),
	(4,'Leia Organa',150,49,'brown','light','brown','19BBY','female','Alderaan','Human'),
	(5,'Owen Lars',178,120,'brown, grey','light','blue','52BBY','male','Tatooine','Human'),
	(6,'Beru Whitesun lars',165,75,'brown','light','blue','47BBY','female','Tatooine','Human'),
	(7,'R5-D4',97,32,NULL,'white, red','red',NULL,NULL,'Tatooine','Droid'),
	(8,'Biggs Darklighter',183,84,'black','light','brown','24BBY','male','Tatooine','Human'),
	(9,'Obi-Wan Kenobi',182,77,'auburn, white','fair','blue-gray','57BBY','male','Stewjon','Human'),
	(10,'Anakin Skywalker',188,84,'blond','fair','blue','41.9BBY','male','Tatooine','Human'),
	(11,'Wilhuff Tarkin',180,NULL,'auburn, grey','fair','blue','64BBY','male','Eriadu','Human'),
	(12,'Chewbacca',228,112,'brown',NULL,'blue','200BBY','male','Kashyyyk','Wookiee'),
	(13,'Han Solo',180,80,'brown','fair','brown','29BBY','male','Corellia','Human'),
	(14,'Greedo',173,74,NULL,'green','black','44BBY','male','Rodia','Rodian'),
	(15,'Jabba Desilijic Tiure',175,1358,NULL,'green-tan, brown','orange','600BBY','hermaphrodite','Nal Hutta','Hutt'),
	(16,'Wedge Antilles',170,77,'brown','fair','hazel','21BBY','male','Corellia','Human'),
	(17,'Jek Tono Porkins',180,110,'brown','fair','blue',NULL,'male','Bestine IV','Human'),
	(18,'Yoda',66,17,'white','green','brown','896BBY','male',NULL,'Yoda\'s species'),
	(19,'Palpatine',170,75,'grey','pale','yellow','82BBY','male','Naboo','Human'),
	(20,'Boba Fett',183,78.2,'black','fair','brown','31.5BBY','male','Kamino','Human'),
	(21,'IG-88',200,140,'none','metal','red','15BBY','none',NULL,'Droid'),
	(22,'Bossk',190,113,'none','green','red','53BBY','male','Trandosha','Trandoshan'),
	(23,'Lando Calrissian',177,79,'black','dark','brown','31BBY','male','Socorro','Human'),
	(24,'Lobot',175,79,'none','light','blue','37BBY','male','Bespin','Human'),
	(25,'Ackbar',180,83,'none','brown mottle','orange','41BBY','male','Mon Cala','Mon Calamari'),
	(26,'Mon Mothma',150,NULL,'auburn','fair','blue','48BBY','female','Chandrila','Human'),
	(27,'Arvel Crynyd',NULL,NULL,'brown','fair','brown',NULL,'male',NULL,'Human'),
	(28,'Wicket Systri Warrick',88,20,'brown','brown','brown','8BBY','male','Endor','Ewok'),
	(29,'Nien Nunb',160,68,'none','grey','black',NULL,'male','Sullust','Sullustan'),
	(30,'Qui-Gon Jinn',193,89,'brown','fair','blue','92BBY','male',NULL,'Human'),
	(31,'Nute Gunray',191,90,'none','mottled green','red',NULL,'male','Cato Neimoidia','Neimodian'),
	(32,'Finis Valorum',170,NULL,'blond','fair','blue','91BBY','male','Coruscant','Human'),
	(33,'Jar Jar Binks',196,66,'none','orange','orange','52BBY','male','Naboo','Gungan'),
	(34,'Roos Tarpals',224,82,'none','grey','orange',NULL,'male','Naboo','Gungan'),
	(35,'Rugor Nass',206,NULL,'none','green','orange',NULL,'male','Naboo','Gungan'),
	(36,'Ric Olié',183,NULL,'brown','fair','blue',NULL,'male','Naboo',NULL),
	(37,'Watto',137,NULL,'black','blue, grey','yellow',NULL,'male','Toydaria','Toydarian'),
	(38,'Sebulba',112,40,'none','grey, red','orange',NULL,'male','Malastare','Dug'),
	(39,'Quarsh Panaka',183,NULL,'black','dark','brown','62BBY','male','Naboo',NULL),
	(40,'Shmi Skywalker',163,NULL,'black','fair','brown','72BBY','female','Tatooine','Human'),
	(41,'Darth Maul',175,80,'none','red','yellow','54BBY','male','Dathomir','Zabrak'),
	(42,'Bib Fortuna',180,NULL,'none','pale','pink',NULL,'male','Ryloth','Twi\'lek'),
	(43,'Ayla Secura',178,55,'none','blue','hazel','48BBY','female','Ryloth','Twi\'lek'),
	(44,'Dud Bolt',94,45,'none','blue, grey','yellow',NULL,'male','Vulpter','Vulptereen'),
	(45,'Gasgano',122,NULL,'none','white, blue','black',NULL,'male','Troiken','Xexto'),
	(46,'Ben Quadinaros',163,65,'none','grey, green, yellow','orange',NULL,'male','Tund','Toong'),
	(47,'Mace Windu',188,84,'none','dark','brown','72BBY','male','Haruun Kal','Human'),
	(48,'Ki-Adi-Mundi',198,82,'white','pale','yellow','92BBY','male','Cerea','Cerean'),
	(49,'Kit Fisto',196,87,'none','green','black',NULL,'male','Glee Anselm','Nautolan'),
	(50,'Eeth Koth',171,NULL,'black','brown','brown',NULL,'male','Iridonia','Zabrak'),
	(51,'Adi Gallia',184,50,'none','dark','blue',NULL,'female','Coruscant','Tholothian'),
	(52,'Saesee Tiin',188,NULL,'none','pale','orange',NULL,'male','Iktotch','Iktotchi'),
	(53,'Yarael Poof',264,NULL,'none','white','yellow',NULL,'male','Quermia','Quermian'),
	(54,'Plo Koon',188,80,'none','orange','black','22BBY','male','Dorin','Kel Dor'),
	(55,'Mas Amedda',196,NULL,'none','blue','blue',NULL,'male','Champala','Chagrian'),
	(56,'Gregar Typho',185,85,'black','dark','brown',NULL,'male','Naboo','Human'),
	(57,'Cordé',157,NULL,'brown','light','brown',NULL,'female','Naboo','Human'),
	(58,'Cliegg Lars',183,NULL,'brown','fair','blue','82BBY','male','Tatooine','Human'),
	(59,'Poggle the Lesser',183,80,'none','green','yellow',NULL,'male','Geonosis','Geonosian'),
	(60,'Luminara Unduli',170,56.2,'black','yellow','blue','58BBY','female','Mirial','Mirialan'),
	(61,'Barriss Offee',166,50,'black','yellow','blue','40BBY','female','Mirial','Mirialan'),
	(62,'Dormé',165,NULL,'brown','light','brown',NULL,'female','Naboo','Human'),
	(63,'Dooku',193,80,'white','fair','brown','102BBY','male','Serenno','Human'),
	(64,'Bail Prestor Organa',191,NULL,'black','tan','brown','67BBY','male','Alderaan','Human'),
	(65,'Jango Fett',183,79,'black','tan','brown','66BBY','male','Concord Dawn','Human'),
	(66,'Zam Wesell',168,55,'blonde','fair, green, yellow','yellow',NULL,'female','Zolan','Clawdite'),
	(67,'Dexter Jettster',198,102,'none','brown','yellow',NULL,'male','Ojom','Besalisk'),
	(68,'Lama Su',229,88,'none','grey','black',NULL,'male','Kamino','Kaminoan'),
	(69,'Taun We',213,NULL,'none','grey','black',NULL,'female','Kamino','Kaminoan'),
	(70,'Jocasta Nu',167,NULL,'white','fair','blue',NULL,'female','Coruscant','Human'),
	(71,'Ratts Tyerell',79,15,'none','grey, blue',NULL,NULL,'male','Aleen Minor','Aleena'),
	(72,'R4-P17',96,NULL,'none','silver, red','red, blue',NULL,'female',NULL,NULL),
	(73,'Wat Tambor',193,48,'none','green, grey',NULL,NULL,'male','Skako','Skakoan'),
	(74,'San Hill',191,NULL,'none','grey','gold',NULL,'male','Muunilinst','Muun'),
	(75,'Shaak Ti',178,57,'none','red, blue, white','black',NULL,'female','Shili','Togruta'),
	(76,'Grievous',216,159,'none','brown, white','green, yellow',NULL,'male','Kalee','Kaleesh'),
	(77,'Tarfful',234,136,'brown','brown','blue',NULL,'male','Kashyyyk','Wookiee'),
	(78,'Raymus Antilles',188,79,'brown','light','brown',NULL,'male','Alderaan','Human'),
	(79,'Sly Moore',178,48,'none','pale','white',NULL,'female','Umbara',NULL),
	(80,'Tion Medon',206,80,'none','grey','black',NULL,'male','Utapau','Pau\'an'),
	(81,'Finn',NULL,NULL,'black','dark','dark',NULL,'male',NULL,'Human'),
	(82,'Rey',NULL,NULL,'brown','light','hazel',NULL,'female',NULL,'Human'),
	(83,'Poe Dameron',NULL,NULL,'brown','light','brown',NULL,'male',NULL,'Human'),
	(84,'BB8',NULL,NULL,'none','none','black',NULL,'none',NULL,'Droid'),
	(85,'Captain Phasma',NULL,NULL,NULL,NULL,NULL,NULL,'female',NULL,NULL),
	(86,'Padmé Amidala',165,45,'brown','light','brown','46BBY','female','Naboo','Human');

/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table films
# ------------------------------------------------------------

DROP TABLE IF EXISTS `films`;

CREATE TABLE `films` (
  `id` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_general_ci,
  `episode_id` bigint(20) DEFAULT NULL,
  `opening_crawl` text COLLATE utf8mb4_general_ci,
  `director` text COLLATE utf8mb4_general_ci,
  `producer` text COLLATE utf8mb4_general_ci,
  `release_date` text COLLATE utf8mb4_general_ci,
  `characters` text COLLATE utf8mb4_general_ci,
  `planets` text COLLATE utf8mb4_general_ci,
  `starships` text COLLATE utf8mb4_general_ci,
  `vehicles` text COLLATE utf8mb4_general_ci,
  `species` text COLLATE utf8mb4_general_ci,
  `created` text COLLATE utf8mb4_general_ci,
  `edited` text COLLATE utf8mb4_general_ci,
  KEY `ix_films_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;

INSERT INTO `films` (`id`, `title`, `episode_id`, `opening_crawl`, `director`, `producer`, `release_date`, `characters`, `planets`, `starships`, `vehicles`, `species`, `created`, `edited`)
VALUES
	(0,'A New Hope',4,'It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire\'s\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire\'s\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....','George Lucas','Gary Kurtz, Rick McCallum','1977-05-25','Luke Skywalker,C-3PO,R2-D2,Darth Vader,Leia Organa,Owen Lars,Beru Whitesun lars,R5-D4,Biggs Darklighter,Obi-Wan Kenobi,Wilhuff Tarkin,Chewbacca,Han Solo,Greedo,Jabba Desilijic Tiure,Wedge Antilles,Jek Tono Porkins,Raymus Antilles','Alderaan,Yavin IV,Tatooine','CR90 corvette,Star Destroyer,Sentinel-class landing craft,Death Star,Millennium Falcon,Y-wing,X-wing,TIE Advanced x1','Sand Crawler,T-16 skyhopper,X-34 landspeeder,TIE/LN starfighter','Hutt,Wookiee,Droid,Human,Rodian','2014-12-10T14:23:31.880000Z','2015-04-11T09:46:52.774897Z'),
	(1,'Attack of the Clones',2,'There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....','George Lucas','Rick McCallum','2002-05-16','C-3PO,R2-D2,Owen Lars,Beru Whitesun lars,Obi-Wan Kenobi,Anakin Skywalker,Yoda,Palpatine,Boba Fett,Nute Gunray,Jar Jar Binks,Watto,Shmi Skywalker,Ayla Secura,Mace Windu,Ki-Adi-Mundi,Kit Fisto,Plo Koon,Mas Amedda,Gregar Typho,Cordé,Cliegg Lars,Poggle the Lesser,Luminara Unduli,Barriss Offee,Dormé,Dooku,Bail Prestor Organa,Jango Fett,Zam Wesell,Dexter Jettster,Lama Su,Taun We,Jocasta Nu,R4-P17,Wat Tambor,San Hill,Shaak Ti,Sly Moore,Padmé Amidala','Naboo,Coruscant,Kamino,Geonosis,Tatooine','Slave 1,Naboo fighter,J-type diplomatic barge,AA-9 Coruscant freighter,Jedi starfighter,H-type Nubian yacht,Droid control ship,Republic Assault ship,Solar Sailer','Sand Crawler,Zephyr-G swoop bike,Koro-2 Exodrive airspeeder,XJ-6 airspeeder,LAAT/i,LAAT/c,AT-TE,SPHA,Flitknot speeder,Neimoidian shuttle,Geonosian starfighter','Kaminoan,Skakoan,Droid,Togruta,Yoda\'s species,Human,Gungan,Muun,Toydarian,Twi\'lek,Geonosian,Mirialan,Clawdite,Besalisk','2014-12-20T10:57:57.886000Z','2015-04-11T09:45:01.623982Z'),
	(2,'The Phantom Menace',1,'Turmoil has engulfed the\r\nGalactic Republic. The taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....','George Lucas','Rick McCallum','1999-05-19','C-3PO,R2-D2,Obi-Wan Kenobi,Anakin Skywalker,Jabba Desilijic Tiure,Yoda,Palpatine,Qui-Gon Jinn,Nute Gunray,Finis Valorum,Jar Jar Binks,Roos Tarpals,Rugor Nass,Ric Olié,Watto,Sebulba,Quarsh Panaka,Shmi Skywalker,Darth Maul,Ayla Secura,Dud Bolt,Gasgano,Ben Quadinaros,Mace Windu,Ki-Adi-Mundi,Kit Fisto,Eeth Koth,Adi Gallia,Saesee Tiin,Yarael Poof,Plo Koon,Mas Amedda,Ratts Tyerell,Padmé Amidala','Naboo,Coruscant,Tatooine','Naboo Royal Starship,Scimitar,Republic Cruiser,Droid control ship,Naboo fighter','Vulture Droid,Multi-Troop Transport,Armored Assault Tank,Single Trooper Aerial Platform,C-9979 landing craft,Tribubble bongo,Sith speeder','Human,Droid,Yoda\'s species,Neimodian,Gungan,Toydarian,Dug,Twi\'lek,Aleena,Vulptereen,Xexto,Toong,Cerean,Nautolan,Zabrak,Tholothian,Iktotchi,Quermian,Kel Dor,Chagrian','2014-12-19T16:52:55.740000Z','2015-04-11T09:45:18.689301Z'),
	(3,'Revenge of the Sith',3,'War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....','George Lucas','Rick McCallum','2005-05-19','Luke Skywalker,C-3PO,R2-D2,Darth Vader,Leia Organa,Owen Lars,Beru Whitesun lars,Obi-Wan Kenobi,Anakin Skywalker,Wilhuff Tarkin,Chewbacca,Yoda,Palpatine,Nute Gunray,Ayla Secura,Mace Windu,Ki-Adi-Mundi,Kit Fisto,Eeth Koth,Adi Gallia,Saesee Tiin,Plo Koon,Poggle the Lesser,Luminara Unduli,Dooku,Bail Prestor Organa,R4-P17,Shaak Ti,Grievous,Tarfful,Raymus Antilles,Sly Moore,Tion Medon,Padmé Amidala','Alderaan,Dagobah,Naboo,Coruscant,Utapau,Mustafar,Kashyyyk,Polis Massa,Mygeeto,Felucia,Cato Neimoidia,Saleucami,Tatooine','Jedi starfighter,Trade Federation cruiser,Theta-class T-2c shuttle,Droid control ship,Republic attack cruiser,Naboo star skiff,Jedi Interceptor,arc-170,Belbullab-22 starfighter,V-wing,CR90 corvette,Banking clan frigate','Vulture Droid,LAAT/i,AT-TE,Neimoidian shuttle,Tsmeu-6 personal wheel bike,Emergency Firespeeder,Droid tri-fighter,Oevvaor jet catamaran,Raddaugh Gnasp fluttercraft,Clone turbo tank,Corporate Alliance tank droid,Droid gunship,AT-RT','Toong,Skakoan,Droid,Wookiee,Kaleesh,Pau\'an,Yoda\'s species,Human,Muun,Twi\'lek,Togruta,Cerean,Tholothian,Iktotchi,Quermian,Kel Dor,Chagrian,Geonosian,Mirialan,Clawdite','2014-12-20T18:49:38.403000Z','2015-04-11T09:45:44.862122Z'),
	(4,'Return of the Jedi',6,'Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...','Richard Marquand','Howard G. Kazanjian, George Lucas, Rick McCallum','1983-05-25','Luke Skywalker,C-3PO,R2-D2,Darth Vader,Leia Organa,Obi-Wan Kenobi,Chewbacca,Han Solo,Jabba Desilijic Tiure,Wedge Antilles,Yoda,Palpatine,Boba Fett,Lando Calrissian,Ackbar,Mon Mothma,Arvel Crynyd,Wicket Systri Warrick,Nien Nunb,Bib Fortuna','Dagobah,Endor,Naboo,Coruscant,Tatooine','Executor,Millennium Falcon,Y-wing,X-wing,Imperial shuttle,EF76 Nebulon-B escort frigate,Calamari Cruiser,A-wing,B-wing,Star Destroyer,Rebel transport,CR90 corvette','TIE/LN starfighter,TIE bomber,AT-AT,AT-ST,Sail barge,Bantha-II cargo skiff,TIE/IN interceptor,Imperial Speeder Bike','Human,Droid,Wookiee,Hutt,Yoda\'s species,Mon Calamari,Ewok,Sullustan,Twi\'lek','2014-12-18T10:39:33.255000Z','2015-04-11T09:46:05.220365Z'),
	(5,'The Empire Strikes Back',5,'It is a dark time for the\r\nRebellion. Although the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....','Irvin Kershner','Gary Kurtz, Rick McCallum','1980-05-17','Luke Skywalker,C-3PO,R2-D2,Darth Vader,Leia Organa,Obi-Wan Kenobi,Chewbacca,Han Solo,Wedge Antilles,Yoda,Palpatine,Boba Fett,IG-88,Bossk,Lando Calrissian,Lobot','Hoth,Dagobah,Bespin,Ord Mantell','Executor,Millennium Falcon,Y-wing,X-wing,Slave 1,Imperial shuttle,EF76 Nebulon-B escort frigate,Star Destroyer,Rebel transport','TIE/LN starfighter,Snowspeeder,TIE bomber,AT-AT,AT-ST,Storm IV Twin-Pod cloud car','Yoda\'s species,Trandoshan,Wookiee,Droid,Human','2014-12-12T11:26:24.656000Z','2017-04-19T10:57:29.544256Z'),
	(6,'The Force Awakens',7,'Luke Skywalker has vanished.\r\nIn his absence, the sinister\r\nFIRST ORDER has risen from\r\nthe ashes of the Empire\r\nand will not rest until\r\nSkywalker, the last Jedi,\r\nhas been destroyed.\r\n \r\nWith the support of the\r\nREPUBLIC, General Leia Organa\r\nleads a brave RESISTANCE.\r\nShe is desperate to find her\r\nbrother Luke and gain his\r\nhelp in restoring peace and\r\njustice to the galaxy.\r\n \r\nLeia has sent her most daring\r\npilot on a secret mission\r\nto Jakku, where an old ally\r\nhas discovered a clue to\r\nLuke\'s whereabouts....','J. J. Abrams','Kathleen Kennedy, J. J. Abrams, Bryan Burk','2015-12-11','Luke Skywalker,R2-D2,Leia Organa,Chewbacca,Han Solo,Ackbar,Finn,Rey,Poe Dameron,BB8,Captain Phasma','Jakku','T-70 X-wing fighter,Millennium Falcon',NULL,'Wookiee,Droid,Human','2015-04-17T06:51:30.504780Z','2015-12-17T14:31:47.617768Z');

/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table planets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `planets`;

CREATE TABLE `planets` (
  `id` bigint(20) DEFAULT NULL,
  `name` text COLLATE utf8mb4_general_ci,
  `rotation_period` double DEFAULT NULL,
  `orbital_period` double DEFAULT NULL,
  `diameter` double DEFAULT NULL,
  `climate` text COLLATE utf8mb4_general_ci,
  `gravity` text COLLATE utf8mb4_general_ci,
  `terrain` text COLLATE utf8mb4_general_ci,
  `surface_water` double DEFAULT NULL,
  `population` double DEFAULT NULL,
  KEY `ix_planets_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `planets` WRITE;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;

INSERT INTO `planets` (`id`, `name`, `rotation_period`, `orbital_period`, `diameter`, `climate`, `gravity`, `terrain`, `surface_water`, `population`)
VALUES
	(0,'Alderaan',24,364,12500,'temperate','1 standard','grasslands, mountains',40,2000000000),
	(1,'Yavin IV',24,4818,10200,'temperate, tropical','1 standard','jungle, rainforests',8,1000),
	(2,'Hoth',23,549,7200,'frozen','1.1 standard','tundra, ice caves, mountain ranges',100,NULL),
	(3,'Dagobah',23,341,8900,'murky',NULL,'swamp, jungles',8,NULL),
	(4,'Bespin',12,5110,118000,'temperate','1.5 (surface), 1 standard (Cloud City)','gas giant',0,6000000),
	(5,'Endor',18,402,4900,'temperate','0.85 standard','forests, mountains, lakes',8,30000000),
	(6,'Naboo',26,312,12120,'temperate','1 standard','grassy hills, swamps, forests, mountains',12,4500000000),
	(7,'Coruscant',24,368,12240,'temperate','1 standard','cityscape, mountains',NULL,1000000000000),
	(8,'Kamino',27,463,19720,'temperate','1 standard','ocean',100,1000000000),
	(9,'Geonosis',30,256,11370,'temperate, arid','0.9 standard','rock, desert, mountain, barren',5,100000000000),
	(10,'Utapau',27,351,12900,'temperate, arid, windy','1 standard','scrublands, savanna, canyons, sinkholes',0.9,95000000),
	(11,'Mustafar',36,412,4200,'hot','1 standard','volcanoes, lava rivers, mountains, caves',0,20000),
	(12,'Kashyyyk',26,381,12765,'tropical','1 standard','jungle, forests, lakes, rivers',60,45000000),
	(13,'Polis Massa',24,590,0,'artificial temperate ','0.56 standard','airless asteroid',0,1000000),
	(14,'Mygeeto',12,167,10088,'frigid','1 standard','glaciers, mountains, ice canyons',NULL,19000000),
	(15,'Felucia',34,231,9100,'hot, humid','0.75 standard','fungus forests',NULL,8500000),
	(16,'Cato Neimoidia',25,278,0,'temperate, moist','1 standard','mountains, fields, forests, rock arches',NULL,10000000),
	(17,'Saleucami',26,392,14920,'hot',NULL,'caves, desert, mountains, volcanoes',NULL,1400000000),
	(18,'Stewjon',NULL,NULL,0,'temperate','1 standard','grass',NULL,NULL),
	(19,'Eriadu',24,360,13490,'polluted','1 standard','cityscape',NULL,22000000000),
	(20,'Corellia',25,329,11000,'temperate','1 standard','plains, urban, hills, forests',70,3000000000),
	(21,'Rodia',29,305,7549,'hot','1 standard','jungles, oceans, urban, swamps',60,1300000000),
	(22,'Nal Hutta',87,413,12150,'temperate','1 standard','urban, oceans, swamps, bogs',NULL,7000000000),
	(23,'Dantooine',25,378,9830,'temperate','1 standard','oceans, savannas, mountains, grasslands',NULL,1000),
	(24,'Bestine IV',26,680,6400,'temperate',NULL,'rocky islands, oceans',98,62000000),
	(25,'Ord Mantell',26,334,14050,'temperate','1 standard','plains, seas, mesas',10,4000000000),
	(26,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL),
	(27,'Trandosha',25,371,0,'arid','0.62 standard','mountains, seas, grasslands, deserts',NULL,42000000),
	(28,'Socorro',20,326,0,'arid','1 standard','deserts, mountains',NULL,300000000),
	(29,'Mon Cala',21,398,11030,'temperate','1','oceans, reefs, islands',100,27000000000),
	(30,'Chandrila',20,368,13500,'temperate','1','plains, forests',40,1200000000),
	(31,'Sullust',20,263,12780,'superheated','1','mountains, volcanoes, rocky deserts',5,18500000000),
	(32,'Toydaria',21,184,7900,'temperate','1','swamps, lakes',NULL,11000000),
	(33,'Malastare',26,201,18880,'arid, temperate, tropical','1.56','swamps, deserts, jungles, mountains',NULL,2000000000),
	(34,'Dathomir',24,491,10480,'temperate','0.9','forests, deserts, savannas',NULL,5200),
	(35,'Ryloth',30,305,10600,'temperate, arid, subartic','1','mountains, valleys, deserts, tundra',5,1500000000),
	(36,'Aleen Minor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(37,'Vulpter',22,391,14900,'temperate, artic','1','urban, barren',NULL,421000000),
	(38,'Troiken',NULL,NULL,NULL,NULL,NULL,'desert, tundra, rainforests, mountains',NULL,NULL),
	(39,'Tund',48,1770,12190,NULL,NULL,'barren, ash',NULL,0),
	(40,'Haruun Kal',25,383,10120,'temperate','0.98','toxic cloudsea, plateaus, volcanoes',NULL,705300),
	(41,'Cerea',27,386,NULL,'temperate','1','verdant',20,450000000),
	(42,'Glee Anselm',33,206,15600,'tropical, temperate','1','lakes, islands, swamps, seas',80,500000000),
	(43,'Iridonia',29,413,NULL,NULL,NULL,'rocky canyons, acid pools',NULL,NULL),
	(44,'Tholoth',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(45,'Iktotch',22,481,NULL,'arid, rocky, windy','1','rocky',NULL,NULL),
	(46,'Quermia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(47,'Dorin',22,409,13400,'temperate','1',NULL,NULL,NULL),
	(48,'Champala',27,318,NULL,'temperate','1','oceans, rainforests, plateaus',NULL,3500000000),
	(49,'Mirial',NULL,NULL,NULL,NULL,NULL,'deserts',NULL,NULL),
	(50,'Serenno',NULL,NULL,NULL,NULL,NULL,'rainforests, rivers, mountains',NULL,NULL),
	(51,'Concord Dawn',NULL,NULL,NULL,NULL,NULL,'jungles, forests, deserts',NULL,NULL),
	(52,'Zolan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(53,'Ojom',NULL,NULL,NULL,'frigid',NULL,'oceans, glaciers',100,500000000),
	(54,'Skako',27,384,NULL,'temperate','1','urban, vines',NULL,500000000000),
	(55,'Muunilinst',28,412,13800,'temperate','1','plains, forests, hills, mountains',25,5000000000),
	(56,'Shili',NULL,NULL,NULL,'temperate','1','cities, savannahs, seas, plains',NULL,NULL),
	(57,'Kalee',23,378,13850,'arid, temperate, tropical','1','rainforests, cliffs, canyons, seas',NULL,4000000000),
	(58,'Umbara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(59,'Tatooine',23,304,10465,'arid','1 standard','desert',1,200000),
	(60,'Jakku',NULL,NULL,NULL,NULL,NULL,'deserts',NULL,NULL);

/*!40000 ALTER TABLE `planets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table species
# ------------------------------------------------------------

DROP TABLE IF EXISTS `species`;

CREATE TABLE `species` (
  `id` bigint(20) DEFAULT NULL,
  `name` text COLLATE utf8mb4_general_ci,
  `classification` text COLLATE utf8mb4_general_ci,
  `designation` text COLLATE utf8mb4_general_ci,
  `average_height` double DEFAULT NULL,
  `skin_colors` text COLLATE utf8mb4_general_ci,
  `hair_colors` text COLLATE utf8mb4_general_ci,
  `eye_colors` text COLLATE utf8mb4_general_ci,
  `average_lifespan` text COLLATE utf8mb4_general_ci,
  `language` text COLLATE utf8mb4_general_ci,
  `homeworld` text COLLATE utf8mb4_general_ci,
  KEY `ix_species_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;

INSERT INTO `species` (`id`, `name`, `classification`, `designation`, `average_height`, `skin_colors`, `hair_colors`, `eye_colors`, `average_lifespan`, `language`, `homeworld`)
VALUES
	(0,'Hutt','gastropod','sentient',300,'green, brown, tan',NULL,'yellow, red','1000','Huttese','Nal Hutta'),
	(1,'Yoda\'s species','mammal','sentient',66,'green, yellow','brown, white','brown, green, yellow','900','Galactic basic',NULL),
	(2,'Trandoshan','reptile','sentient',200,'brown, green','none','yellow, orange',NULL,'Dosh','Trandosha'),
	(3,'Mon Calamari','amphibian','sentient',160,'red, blue, brown, magenta','none','yellow',NULL,'Mon Calamarian','Mon Cala'),
	(4,'Ewok','mammal','sentient',100,'brown','white, brown, black','orange, brown',NULL,'Ewokese','Endor'),
	(5,'Sullustan','mammal','sentient',180,'pale','none','black',NULL,'Sullutese','Sullust'),
	(6,'Neimodian',NULL,'sentient',180,'grey, green','none','red, pink',NULL,'Neimoidia','Cato Neimoidia'),
	(7,'Gungan','amphibian','sentient',190,'brown, green','none','orange',NULL,'Gungan basic','Naboo'),
	(8,'Toydarian','mammal','sentient',120,'blue, green, grey','none','yellow','91','Toydarian','Toydaria'),
	(9,'Dug','mammal','sentient',100,'brown, purple, grey, red','none','yellow, blue',NULL,'Dugese','Malastare'),
	(10,'Twi\'lek','mammals','sentient',200,'orange, yellow, blue, green, pink, purple, tan','none','blue, brown, orange, pink',NULL,'Twi\'leki','Ryloth'),
	(11,'Aleena','reptile','sentient',80,'blue, gray','none',NULL,'79','Aleena','Aleen Minor'),
	(12,'Vulptereen',NULL,'sentient',100,'grey','none','yellow',NULL,'vulpterish','Vulpter'),
	(13,'Xexto',NULL,'sentient',125,'grey, yellow, purple','none','black',NULL,'Xextese','Troiken'),
	(14,'Toong',NULL,'sentient',200,'grey, green, yellow','none','orange',NULL,'Tundan','Tund'),
	(15,'Cerean','mammal','sentient',200,'pale pink','red, blond, black, white','hazel',NULL,'Cerean','Cerea'),
	(16,'Nautolan','amphibian','sentient',180,'green, blue, brown, red','none','black','70','Nautila','Glee Anselm'),
	(17,'Zabrak','mammal','sentient',180,'pale, brown, red, orange, yellow','black','brown, orange',NULL,'Zabraki','Iridonia'),
	(18,'Tholothian','mammal','sentient',NULL,'dark',NULL,'blue, indigo',NULL,NULL,'Tholoth'),
	(19,'Iktotchi',NULL,'sentient',180,'pink','none','orange',NULL,'Iktotchese','Iktotch'),
	(20,'Quermian','mammal','sentient',240,'white','none','yellow','86','Quermian','Quermia'),
	(21,'Kel Dor',NULL,'sentient',180,'peach, orange, red','none','black, silver','70','Kel Dor','Dorin'),
	(22,'Chagrian','amphibian','sentient',190,'blue','none','blue',NULL,'Chagria','Champala'),
	(23,'Geonosian','insectoid','sentient',178,'green, brown','none','green, hazel',NULL,'Geonosian','Geonosis'),
	(24,'Mirialan','mammal','sentient',180,'yellow, green','black, brown','blue, green, red, yellow, brown, orange',NULL,'Mirialan','Mirial'),
	(25,'Clawdite','reptilian','sentient',180,'green, yellow','none','yellow','70','Clawdite','Zolan'),
	(26,'Besalisk','amphibian','sentient',178,'brown','none','yellow','75','besalisk','Ojom'),
	(27,'Kaminoan','amphibian','sentient',220,'grey, blue','none','black','80','Kaminoan','Kamino'),
	(28,'Skakoan','mammal','sentient',NULL,'grey, green','none',NULL,NULL,'Skakoan','Skako'),
	(29,'Muun','mammal','sentient',190,'grey, white','none','black','100','Muun','Muunilinst'),
	(30,'Togruta','mammal','sentient',180,'red, white, orange, yellow, green, blue','none','red, orange, yellow, green, blue, black','94','Togruti','Shili'),
	(31,'Kaleesh','reptile','sentient',170,'brown, orange, tan','none','yellow','80','Kaleesh','Kalee'),
	(32,'Pau\'an','mammal','sentient',190,'grey','none','black','700','Utapese','Utapau'),
	(33,'Wookiee','mammal','sentient',210,'gray','black, brown','blue, green, yellow, brown, golden, red','400','Shyriiwook','Kashyyyk'),
	(34,'Droid','artificial','sentient',NULL,NULL,NULL,NULL,'indefinite',NULL,NULL),
	(35,'Human','mammal','sentient',180,'caucasian, black, asian, hispanic','blonde, brown, black, red','brown, blue, green, hazel, grey, amber','120','Galactic Basic','Coruscant'),
	(36,'Rodian','sentient','reptilian',170,'green, blue',NULL,'black',NULL,'Galactic Basic','Rodia');

/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table starships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `starships`;

CREATE TABLE `starships` (
  `id` bigint(20) DEFAULT NULL,
  `name` text COLLATE utf8mb4_general_ci,
  `model` text COLLATE utf8mb4_general_ci,
  `manufacturer` text COLLATE utf8mb4_general_ci,
  `cost_in_credits` double DEFAULT NULL,
  `length` text COLLATE utf8mb4_general_ci,
  `max_atmosphering_speed` text COLLATE utf8mb4_general_ci,
  `crew` double DEFAULT NULL,
  `passengers` double DEFAULT NULL,
  `cargo_capacity` double DEFAULT NULL,
  `consumables` text COLLATE utf8mb4_general_ci,
  `hyperdrive_rating` double DEFAULT NULL,
  `MGLT` double DEFAULT NULL,
  `starship_class` text COLLATE utf8mb4_general_ci,
  KEY `ix_starships_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `starships` WRITE;
/*!40000 ALTER TABLE `starships` DISABLE KEYS */;

INSERT INTO `starships` (`id`, `name`, `model`, `manufacturer`, `cost_in_credits`, `length`, `max_atmosphering_speed`, `crew`, `passengers`, `cargo_capacity`, `consumables`, `hyperdrive_rating`, `MGLT`, `starship_class`)
VALUES
	(0,'Executor','Executor-class star dreadnought','Kuat Drive Yards, Fondor Shipyards',1143350000,'19000',NULL,279144,38000,250000000,'6 years',2,40,'Star dreadnought'),
	(1,'Sentinel-class landing craft','Sentinel-class landing craft','Sienar Fleet Systems, Cyngus Spaceworks',240000,'38','1000',5,75,180000,'1 month',1,70,'landing craft'),
	(2,'Death Star','DS-1 Orbital Battle Station','Imperial Department of Military Research, Sienar Fleet Systems',1000000000000,'120000',NULL,342953,843342,1000000000000,'3 years',4,10,'Deep Space Mobile Battlestation'),
	(3,'Millennium Falcon','YT-1300 light freighter','Corellian Engineering Corporation',100000,'34.37','1050',4,6,100000,'2 months',0.5,75,'Light freighter'),
	(4,'Y-wing','BTL Y-wing','Koensayr Manufacturing',134999,'14','1000km',2,0,110,'1 week',1,80,'assault starfighter'),
	(5,'X-wing','T-65 X-wing','Incom Corporation',149999,'12.5','1050',1,0,110,'1 week',1,100,'Starfighter'),
	(6,'TIE Advanced x1','Twin Ion Engine Advanced x1','Sienar Fleet Systems',NULL,'9.2','1200',1,0,150,'5 days',1,105,'Starfighter'),
	(7,'Slave 1','Firespray-31-class patrol and attack','Kuat Systems Engineering',NULL,'21.5','1000',1,6,70000,'1 month',3,70,'Patrol craft'),
	(8,'Imperial shuttle','Lambda-class T-4a shuttle','Sienar Fleet Systems',240000,'20','850',6,20,80000,'2 months',1,50,'Armed government transport'),
	(9,'EF76 Nebulon-B escort frigate','EF76 Nebulon-B escort frigate','Kuat Drive Yards',8500000,'300','800',854,75,6000000,'2 years',2,40,'Escort ship'),
	(10,'Calamari Cruiser','MC80 Liberty type Star Cruiser','Mon Calamari shipyards',104000000,'1200',NULL,5400,1200,NULL,'2 years',1,60,'Star Cruiser'),
	(11,'A-wing','RZ-1 A-wing Interceptor','Alliance Underground Engineering, Incom Corporation',175000,'9.6','1300',1,0,40,'1 week',1,120,'Starfighter'),
	(12,'B-wing','A/SF-01 B-wing starfighter','Slayn & Korpil',220000,'16.9','950',1,0,45,'1 week',2,91,'Assault Starfighter'),
	(13,'Republic Cruiser','Consular-class cruiser','Corellian Engineering Corporation',NULL,'115','900',9,16,NULL,NULL,2,NULL,'Space cruiser'),
	(14,'Naboo fighter','N-1 starfighter','Theed Palace Space Vessel Engineering Corps',200000,'11','1100',1,0,65,'7 days',1,NULL,'Starfighter'),
	(15,'Naboo Royal Starship','J-type 327 Nubian royal starship','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives',NULL,'76','920',8,NULL,NULL,NULL,1.8,NULL,'yacht'),
	(16,'Scimitar','Star Courier','Republic Sienar Systems',55000000,'26.5','1180',1,6,2500000,'30 days',1.5,NULL,'Space Transport'),
	(17,'J-type diplomatic barge','J-type diplomatic barge','Theed Palace Space Vessel Engineering Corps, Nubia Star Drives',2000000,'39','2000',5,10,NULL,'1 year',0.7,NULL,'Diplomatic barge'),
	(18,'AA-9 Coruscant freighter','Botajef AA-9 Freighter-Liner','Botajef Shipyards',NULL,'390',NULL,NULL,30000,NULL,NULL,NULL,NULL,'freighter'),
	(19,'Jedi starfighter','Delta-7 Aethersprite-class interceptor','Kuat Systems Engineering',180000,'8','1150',1,0,60,'7 days',1,NULL,'Starfighter'),
	(20,'H-type Nubian yacht','H-type Nubian yacht','Theed Palace Space Vessel Engineering Corps',NULL,'47.9','8000',4,NULL,NULL,NULL,0.9,NULL,'yacht'),
	(21,'Star Destroyer','Imperial I-class Star Destroyer','Kuat Drive Yards',150000000,'1,600','975',47060,0,36000000,'2 years',2,60,'Star Destroyer'),
	(22,'Trade Federation cruiser','Providence-class carrier/destroyer','Rendili StarDrive, Free Dac Volunteers Engineering corps.',125000000,'1088','1050',600,48247,50000000,'4 years',1.5,NULL,'capital ship'),
	(23,'Theta-class T-2c shuttle','Theta-class T-2c shuttle','Cygnus Spaceworks',1000000,'18.5','2000',5,16,50000,'56 days',1,NULL,'transport'),
	(24,'T-70 X-wing fighter','T-70 X-wing fighter','Incom',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'fighter'),
	(25,'Rebel transport','GR-75 medium transport','Gallofree Yards, Inc.',NULL,'90','650',6,90,19000000,'6 months',4,20,'Medium transport'),
	(26,'Droid control ship','Lucrehulk-class Droid Control Ship','Hoersch-Kessel Drive, Inc.',NULL,'3170',NULL,175,139000,4000000000,'500 days',2,NULL,'Droid control ship'),
	(27,'Republic Assault ship','Acclamator I-class assault ship','Rothana Heavy Engineering',NULL,'752',NULL,700,16000,11250000,'2 years',0.6,NULL,'assault ship'),
	(28,'Solar Sailer','Punworcca 116-class interstellar sloop','Huppla Pasa Tisc Shipwrights Collective',35700,'15.2','1600',3,11,240,'7 days',1.5,NULL,'yacht'),
	(29,'Republic attack cruiser','Senator-class Star Destroyer','Kuat Drive Yards, Allanteen Six shipyards',59000000,'1137','975',7400,2000,20000000,'2 years',1,NULL,'star destroyer'),
	(30,'Naboo star skiff','J-type star skiff','Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated',NULL,'29.2','1050',3,3,NULL,NULL,0.5,NULL,'yacht'),
	(31,'Jedi Interceptor','Eta-2 Actis-class light interceptor','Kuat Systems Engineering',320000,'5.47','1500',1,0,60,'2 days',1,NULL,'starfighter'),
	(32,'arc-170','Aggressive Reconnaissance-170 starfighte','Incom Corporation, Subpro Corporation',155000,'14.5','1000',3,0,110,'5 days',1,100,'starfighter'),
	(33,'Belbullab-22 starfighter','Belbullab-22 starfighter','Feethan Ottraw Scalable Assemblies',168000,'6.71','1100',1,0,140,'7 days',6,NULL,'starfighter'),
	(34,'V-wing','Alpha-3 Nimbus-class V-wing starfighter','Kuat Systems Engineering',102500,'7.9','1050',1,0,60,'15 hours',1,NULL,'starfighter'),
	(35,'CR90 corvette','CR90 corvette','Corellian Engineering Corporation',3500000,'150','950',165,600,3000000,'1 year',2,60,'corvette'),
	(36,'Banking clan frigate','Munificent-class star frigate','Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries',57000000,'825',NULL,200,NULL,40000000,'2 years',1,NULL,'cruiser');

/*!40000 ALTER TABLE `starships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table vehicles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` bigint(20) DEFAULT NULL,
  `name` text COLLATE utf8mb4_general_ci,
  `model` text COLLATE utf8mb4_general_ci,
  `manufacturer` text COLLATE utf8mb4_general_ci,
  `cost_in_credits` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `max_atmosphering_speed` double DEFAULT NULL,
  `crew` bigint(20) DEFAULT NULL,
  `passengers` double DEFAULT NULL,
  `cargo_capacity` text COLLATE utf8mb4_general_ci,
  `consumables` text COLLATE utf8mb4_general_ci,
  `vehicle_class` text COLLATE utf8mb4_general_ci,
  KEY `ix_vehicles_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;

INSERT INTO `vehicles` (`id`, `name`, `model`, `manufacturer`, `cost_in_credits`, `length`, `max_atmosphering_speed`, `crew`, `passengers`, `cargo_capacity`, `consumables`, `vehicle_class`)
VALUES
	(0,'Sand Crawler','Digger Crawler','Corellia Mining Corporation',150000,36.8,30,46,30,'50000','2 months','wheeled'),
	(1,'T-16 skyhopper','T-16 skyhopper','Incom Corporation',14500,10.4,1200,1,1,'50','0','repulsorcraft'),
	(2,'X-34 landspeeder','X-34 landspeeder','SoroSuub Corporation',10550,3.4,250,1,1,'5',NULL,'repulsorcraft'),
	(3,'TIE/LN starfighter','Twin Ion Engine/Ln Starfighter','Sienar Fleet Systems',NULL,6.4,1200,1,0,'65','2 days','starfighter'),
	(4,'Snowspeeder','t-47 airspeeder','Incom corporation',NULL,4.5,650,2,0,'10','none','airspeeder'),
	(5,'TIE bomber','TIE/sa bomber','Sienar Fleet Systems',NULL,7.8,850,1,0,'none','2 days','space/planetary bomber'),
	(6,'AT-AT','All Terrain Armored Transport','Kuat Drive Yards, Imperial Department of Military Research',NULL,20,60,5,40,'1000',NULL,'assault walker'),
	(7,'AT-ST','All Terrain Scout Transport','Kuat Drive Yards, Imperial Department of Military Research',NULL,2,90,2,0,'200','none','walker'),
	(8,'Storm IV Twin-Pod cloud car','Storm IV Twin-Pod','Bespin Motors',75000,7,1500,2,0,'10','1 day','repulsorcraft'),
	(9,'Sail barge','Modified Luxury Sail Barge','Ubrikkian Industries Custom Vehicle Division',285000,30,100,26,500,'2000000','Live food tanks','sail barge'),
	(10,'Bantha-II cargo skiff','Bantha-II','Ubrikkian Industries',8000,9.5,250,5,16,'135000','1 day','repulsorcraft cargo skiff'),
	(11,'TIE/IN interceptor','Twin Ion Engine Interceptor','Sienar Fleet Systems',NULL,9.6,1250,1,0,'75','2 days','starfighter'),
	(12,'Imperial Speeder Bike','74-Z speeder bike','Aratech Repulsor Company',8000,3,360,1,1,'4','1 day','speeder'),
	(13,'Vulture Droid','Vulture-class droid starfighter','Haor Chall Engineering, Baktoid Armor Workshop',NULL,3.5,1200,0,0,'0','none','starfighter'),
	(14,'Multi-Troop Transport','Multi-Troop Transport','Baktoid Armor Workshop',138000,31,35,4,112,'12000',NULL,'repulsorcraft'),
	(15,'Armored Assault Tank','Armoured Assault Tank','Baktoid Armor Workshop',NULL,9.75,55,4,6,NULL,NULL,'repulsorcraft'),
	(16,'Single Trooper Aerial Platform','Single Trooper Aerial Platform','Baktoid Armor Workshop',2500,2,400,1,0,'none','none','repulsorcraft'),
	(17,'C-9979 landing craft','C-9979 landing craft','Haor Chall Engineering',200000,210,587,140,284,'1800000','1 day','landing craft'),
	(18,'Tribubble bongo','Tribubble bongo','Otoh Gunga Bongameken Cooperative',NULL,15,85,1,2,'1600',NULL,'submarine'),
	(19,'Sith speeder','FC-20 speeder bike','Razalon',4000,1.5,180,1,0,'2',NULL,'speeder'),
	(20,'Zephyr-G swoop bike','Zephyr-G swoop bike','Mobquet Swoops and Speeders',5750,3.68,350,1,1,'200','none','repulsorcraft'),
	(21,'Koro-2 Exodrive airspeeder','Koro-2 Exodrive airspeeder','Desler Gizh Outworld Mobility Corporation',NULL,6.6,800,1,1,'80',NULL,'airspeeder'),
	(22,'XJ-6 airspeeder','XJ-6 airspeeder','Narglatch AirTech prefabricated kit',NULL,6.23,720,1,1,NULL,NULL,'airspeeder'),
	(23,'LAAT/i','Low Altitude Assault Transport/infrantry','Rothana Heavy Engineering',NULL,17.4,620,6,30,'170',NULL,'gunship'),
	(24,'LAAT/c','Low Altitude Assault Transport/carrier','Rothana Heavy Engineering',NULL,28.82,620,1,0,'40000',NULL,'gunship'),
	(25,'Tsmeu-6 personal wheel bike','Tsmeu-6 personal wheel bike','Z-Gomot Ternbuell Guppat Corporation',15000,3.5,330,1,1,'10','none','wheeled walker'),
	(26,'Emergency Firespeeder','Fire suppression speeder',NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,'fire suppression ship'),
	(27,'Droid tri-fighter','tri-fighter','Colla Designs, Phlac-Arphocc Automata Industries',20000,5.4,1180,1,0,'0','none','droid starfighter'),
	(28,'Oevvaor jet catamaran','Oevvaor jet catamaran','Appazanna Engineering Works',12125,15.1,420,2,2,'50','3 days','airspeeder'),
	(29,'Raddaugh Gnasp fluttercraft','Raddaugh Gnasp fluttercraft','Appazanna Engineering Works',14750,7,310,2,0,'20','none','air speeder'),
	(30,'Clone turbo tank','HAVw A6 Juggernaut','Kuat Drive Yards',350000,49.4,160,20,300,'30000','20 days','wheeled walker'),
	(31,'Corporate Alliance tank droid','NR-N99 Persuader-class droid enforcer','Techno Union',49000,10.96,100,0,4,'none','none','droid tank'),
	(32,'Droid gunship','HMP droid gunship','Baktoid Fleet Ordnance, Haor Chall Engineering',60000,12.3,820,0,0,'0','none','airspeeder'),
	(33,'AT-RT','All Terrain Recon Transport','Kuat Drive Yards',40000,3.2,90,1,0,'20','1 day','walker'),
	(34,'AT-TE','All Terrain Tactical Enforcer','Rothana Heavy Engineering, Kuat Drive Yards',NULL,13.2,60,6,36,'10000','21 days','walker'),
	(35,'SPHA','Self-Propelled Heavy Artillery','Rothana Heavy Engineering',NULL,140,35,25,30,'500','7 days','walker'),
	(36,'Flitknot speeder','Flitknot speeder','Huppla Pasa Tisc Shipwrights Collective',8000,2,634,1,0,NULL,NULL,'speeder'),
	(37,'Neimoidian shuttle','Sheathipede-class transport shuttle','Haor Chall Engineering',NULL,20,880,2,6,'1000','7 days','transport'),
	(38,'Geonosian starfighter','Nantex-class territorial defense','Huppla Pasa Tisc Shipwrights Collective',NULL,9.8,20000,1,0,NULL,NULL,'starfighter');

/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
