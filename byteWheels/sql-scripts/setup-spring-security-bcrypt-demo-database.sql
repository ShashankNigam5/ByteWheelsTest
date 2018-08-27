DROP DATABASE  IF EXISTS `spring_security_demo_bcrypt`;

CREATE DATABASE  IF NOT EXISTS `spring_security_demo_bcrypt`;
USE `spring_security_demo_bcrypt`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--
-- NOTE: The passwords are encrypted using BCrypt
--
-- A generation tool is avail at: http://www.luv2code.com/generate-bcrypt-password
--
-- Default passwords here are: fun123
--

INSERT INTO `users` 
VALUES 
('john','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1),
('mary','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1),
('susan','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1);


--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
('john','ROLE_EMPLOYEE'),
('mary','ROLE_EMPLOYEE'),
('mary','ROLE_MANAGER'),
('susan','ROLE_EMPLOYEE'),
('susan','ROLE_ADMIN');

--
-- Table Structure for table 'availcars'
DROP TABLE IF EXISTS `availcars`;
CREATE TABLE `availcars` (
  `UNIQUECarID` varchar(5) NOT NULL,
  `CarNAME` varchar(50) DEFAULT NULL,
  `CarCATegory` varchar(50) DEFAULT NULL,
  `ISAVAIL` varchar(10) DEFAULT 'Y',
  `BOOKED_DATE_FROM` varchar(50) DEFAULT NULL,
  `Rate` int(11) DEFAULT NULL,
  `BOOKED_DATE_TO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--Table Structure for table 'bookedcars'
DROP TABLE IF EXISTS `bookingdetails`;
CREATE TABLE `bookingdetails` (
  `BookingID` int(11) NOT NULL AUTO_INCREMENT,
  `BookedCarID` varchar(10) DEFAULT NULL,
  `BookedCarNAME` varchar(50) DEFAULT NULL,
  `BookedFROM` varchar(50) DEFAULT NULL,
  `BookedTO` varchar(50) DEFAULT NULL,
  `AMOUNT_TOBE_PAID` mediumtext,
  `CarCategory` varchar(45) DEFAULT NULL,
  `CustomerName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BookingID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;




