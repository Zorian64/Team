CREATE TABLE `watches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brend` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` mediumblob,
`file_name` varchar(128) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
