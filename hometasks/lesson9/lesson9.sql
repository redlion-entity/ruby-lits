# Table "errors"

DROP TABLE IF EXISTS `errors`;
CREATE TABLE `errors` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `errors` VALUES (1,'Wrong number of arguments'),(2,'Arguments must be positive numbers');


# Table "figures"

DROP TABLE IF EXISTS `figures`;
CREATE TABLE `figures` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `figures` VALUES (1,'triangle'),(2,'rectangle'),(3,'circle');


# Table "formulas"

DROP TABLE IF EXISTS `formulas`;
CREATE TABLE `formulas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `figure_id` int(11) unsigned NOT NULL,
  `arguments_number` int(11) unsigned DEFAULT NULL,
  `formula` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`figure_id`) REFERENCES figures(`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `formulas` VALUES (1,1,2,'b*h/2'),(2,1,3,'Math.sqrt(p*(p-a)*(p-b)*(p-c))'),(3,2,2,'a*b'),(4,3,1,'p*r**2');