-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.3.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping database structure for gymmanagement
CREATE DATABASE IF NOT EXISTS `gymmanagement` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `gymmanagement`;

-- Dumping structure for table gymmanagement.classschedule
CREATE TABLE IF NOT EXISTS `classschedule` (
  `classCode` varchar(4) NOT NULL,
  `coachCode` varchar(6) NOT NULL,
  `weekday` varchar(9) NOT NULL,
  `time` varchar(5) NOT NULL,
  `venue` varchar(10) NOT NULL,
  `noOfVacanies` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`classCode`),
  KEY `FK_classschedule_coachname` (`coachCode`),
  CONSTRAINT `FK_classschedule_coachname` FOREIGN KEY (`coachCode`) REFERENCES `coachname` (`coachCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table gymmanagement.classschedule
-- Data entries omitted for brevity

-- Dumping structure for table gymmanagement.coachname
CREATE TABLE IF NOT EXISTS `coachname` (
  `coachCode` varchar(6) NOT NULL,
  `coachName` varchar(30) NOT NULL,
  PRIMARY KEY (`coachCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table gymmanagement.coachname
-- Data entries omitted for brevity

-- Creating table for class bookings
CREATE TABLE IF NOT EXISTS `classbookings` (
  `ReservationCode` varchar(10) NOT NULL,
  `ClientName` varchar(100),
  `ClassCode` varchar(4),information_schema
  `CoachName` varchar(100),
  `Weekday` varchar(9),
  `Time` varchar(5),
  `Venue` varchar(10),
  `Price` DOUBLE,
  `Active` varchar(10),
  PRIMARY KEY (`ReservationCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;