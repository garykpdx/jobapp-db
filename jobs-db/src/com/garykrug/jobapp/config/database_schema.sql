Create Table: CREATE TABLE `jobapp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `applied_dt` date DEFAULT NULL,
  `status` enum('new','applied','interviewed','unknown','closed','offered') DEFAULT 'new',
  `job_number` varchar(30) DEFAULT NULL,
  `location` varchar(60) DEFAULT NULL,
  `company` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



Create Table: CREATE TABLE `user` (
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



Create Table: CREATE TABLE `authority` (
  `username` varchar(60) DEFAULT NULL,
  `authority` enum('USER','ADMIN') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;