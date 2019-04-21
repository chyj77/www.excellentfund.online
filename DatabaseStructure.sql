/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.21 : Database - financialdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`financialdata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `financialdata`;

/*Table structure for table `fundbasedata` */

DROP TABLE IF EXISTS `fundbasedata`;

CREATE TABLE `fundbasedata` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(255) NOT NULL,
  `fundName` varchar(255) NOT NULL,
  `fundShortName` varchar(255) NOT NULL,
  `fundType` varchar(255) NOT NULL,
  `fundLastNAVDate` varchar(255) NOT NULL,
  `fundLastNAV` varchar(255) NOT NULL,
  `fundCumulativeNAV` varchar(255) NOT NULL,
  `fundNAVGrowthRate` varchar(255) NOT NULL,
  `fundIncomeRateOneWeek` varchar(255) NOT NULL,
  `fundIncomeRateOneMonth` varchar(255) NOT NULL,
  `fundIncomeRateThreeMonth` varchar(255) NOT NULL,
  `fundIncomeRateSixMonth` varchar(255) NOT NULL,
  `fundIncomeRateOneYear` varchar(255) NOT NULL,
  `fundIncomeRateTwoYear` varchar(255) NOT NULL,
  `fundIncomeRateThreeYear` varchar(255) NOT NULL,
  `fundIncomeRateCurrentYear` varchar(255) NOT NULL,
  `fundIncomeRateCreatedToNow` varchar(255) NOT NULL,
  `fundCreatedDate` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `fundCode` (`fundCode`)
) ENGINE=InnoDB AUTO_INCREMENT=29274 DEFAULT CHARSET=utf8;

/*Table structure for table `fundmanagerdata` */

DROP TABLE IF EXISTS `fundmanagerdata`;

CREATE TABLE `fundmanagerdata` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dataDate` varchar(255) NOT NULL,
  `managerCode` varchar(255) NOT NULL,
  `managerName` varchar(255) NOT NULL,
  `companyCode` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `currentFundCodeList` varchar(1000) NOT NULL,
  `currentFundNameList` varchar(1000) NOT NULL,
  `managerWorkTime` varchar(255) NOT NULL,
  `currentFundMaxIncome` varchar(255) NOT NULL,
  `currentFundMaxIncomeCode` varchar(255) NOT NULL,
  `currentFundMaxIncomeName` varchar(255) NOT NULL,
  `currentAssets` varchar(255) NOT NULL,
  `managerWorkTimeMaxIncome` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `managerCode` (`managerCode`)
) ENGINE=InnoDB AUTO_INCREMENT=14542 DEFAULT CHARSET=utf8;

/*Table structure for table `fundperformance` */

DROP TABLE IF EXISTS `fundperformance`;

CREATE TABLE `fundperformance` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(255) NOT NULL,
  `valueDate` varchar(255) NOT NULL,
  `fundIncomeRate30Day` varchar(255) NOT NULL,
  `fundIncomeRate90Day` varchar(255) NOT NULL,
  `fundIncomeRate180Day` varchar(255) NOT NULL,
  `fundIncomeRate360Day` varchar(255) NOT NULL,
  `fundIncomeRate1080Day` varchar(255) NOT NULL,
  `fundIncomeRateCreatedToNow` varchar(255) NOT NULL,
  `fundJensenAlpha90Day` varchar(255) NOT NULL,
  `fundJensenAlpha180Day` varchar(255) NOT NULL,
  `fundJensenAlpha360Day` varchar(255) NOT NULL,
  `fundMaxDown180Day` varchar(255) NOT NULL,
  `fundMaxDownTime180Day` varchar(255) NOT NULL,
  `fundMaxDown360Day` varchar(255) NOT NULL,
  `fundMaxDownTime360Day` varchar(255) NOT NULL,
  `fundDownStdevp360Day` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `fundCode` (`fundCode`)
) ENGINE=InnoDB AUTO_INCREMENT=28207 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_00` */

DROP TABLE IF EXISTS `fundvaluedata_00`;

CREATE TABLE `fundvaluedata_00` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4185799 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_01` */

DROP TABLE IF EXISTS `fundvaluedata_01`;

CREATE TABLE `fundvaluedata_01` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4186230 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_02` */

DROP TABLE IF EXISTS `fundvaluedata_02`;

CREATE TABLE `fundvaluedata_02` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184865 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_03` */

DROP TABLE IF EXISTS `fundvaluedata_03`;

CREATE TABLE `fundvaluedata_03` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184319 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_04` */

DROP TABLE IF EXISTS `fundvaluedata_04`;

CREATE TABLE `fundvaluedata_04` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184746 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_05` */

DROP TABLE IF EXISTS `fundvaluedata_05`;

CREATE TABLE `fundvaluedata_05` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4185310 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_06` */

DROP TABLE IF EXISTS `fundvaluedata_06`;

CREATE TABLE `fundvaluedata_06` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184493 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_07` */

DROP TABLE IF EXISTS `fundvaluedata_07`;

CREATE TABLE `fundvaluedata_07` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183819 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_08` */

DROP TABLE IF EXISTS `fundvaluedata_08`;

CREATE TABLE `fundvaluedata_08` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184026 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_09` */

DROP TABLE IF EXISTS `fundvaluedata_09`;

CREATE TABLE `fundvaluedata_09` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184645 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_10` */

DROP TABLE IF EXISTS `fundvaluedata_10`;

CREATE TABLE `fundvaluedata_10` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184493 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_11` */

DROP TABLE IF EXISTS `fundvaluedata_11`;

CREATE TABLE `fundvaluedata_11` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184134 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_12` */

DROP TABLE IF EXISTS `fundvaluedata_12`;

CREATE TABLE `fundvaluedata_12` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4195406 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_13` */

DROP TABLE IF EXISTS `fundvaluedata_13`;

CREATE TABLE `fundvaluedata_13` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4191838 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_14` */

DROP TABLE IF EXISTS `fundvaluedata_14`;

CREATE TABLE `fundvaluedata_14` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4186037 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_15` */

DROP TABLE IF EXISTS `fundvaluedata_15`;

CREATE TABLE `fundvaluedata_15` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4186112 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_16` */

DROP TABLE IF EXISTS `fundvaluedata_16`;

CREATE TABLE `fundvaluedata_16` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184350 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_17` */

DROP TABLE IF EXISTS `fundvaluedata_17`;

CREATE TABLE `fundvaluedata_17` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184283 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_18` */

DROP TABLE IF EXISTS `fundvaluedata_18`;

CREATE TABLE `fundvaluedata_18` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184408 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_19` */

DROP TABLE IF EXISTS `fundvaluedata_19`;

CREATE TABLE `fundvaluedata_19` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184251 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_20` */

DROP TABLE IF EXISTS `fundvaluedata_20`;

CREATE TABLE `fundvaluedata_20` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184560 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_21` */

DROP TABLE IF EXISTS `fundvaluedata_21`;

CREATE TABLE `fundvaluedata_21` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184459 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_22` */

DROP TABLE IF EXISTS `fundvaluedata_22`;

CREATE TABLE `fundvaluedata_22` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184265 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_23` */

DROP TABLE IF EXISTS `fundvaluedata_23`;

CREATE TABLE `fundvaluedata_23` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184448 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_24` */

DROP TABLE IF EXISTS `fundvaluedata_24`;

CREATE TABLE `fundvaluedata_24` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4186057 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_25` */

DROP TABLE IF EXISTS `fundvaluedata_25`;

CREATE TABLE `fundvaluedata_25` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4185206 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_26` */

DROP TABLE IF EXISTS `fundvaluedata_26`;

CREATE TABLE `fundvaluedata_26` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184136 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_27` */

DROP TABLE IF EXISTS `fundvaluedata_27`;

CREATE TABLE `fundvaluedata_27` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184406 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_28` */

DROP TABLE IF EXISTS `fundvaluedata_28`;

CREATE TABLE `fundvaluedata_28` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4186725 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_29` */

DROP TABLE IF EXISTS `fundvaluedata_29`;

CREATE TABLE `fundvaluedata_29` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4190629 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_30` */

DROP TABLE IF EXISTS `fundvaluedata_30`;

CREATE TABLE `fundvaluedata_30` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4189416 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_31` */

DROP TABLE IF EXISTS `fundvaluedata_31`;

CREATE TABLE `fundvaluedata_31` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4191309 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_32` */

DROP TABLE IF EXISTS `fundvaluedata_32`;

CREATE TABLE `fundvaluedata_32` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183665 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_33` */

DROP TABLE IF EXISTS `fundvaluedata_33`;

CREATE TABLE `fundvaluedata_33` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4194566 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_34` */

DROP TABLE IF EXISTS `fundvaluedata_34`;

CREATE TABLE `fundvaluedata_34` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4187400 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_35` */

DROP TABLE IF EXISTS `fundvaluedata_35`;

CREATE TABLE `fundvaluedata_35` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4189334 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_36` */

DROP TABLE IF EXISTS `fundvaluedata_36`;

CREATE TABLE `fundvaluedata_36` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183976 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_37` */

DROP TABLE IF EXISTS `fundvaluedata_37`;

CREATE TABLE `fundvaluedata_37` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183128 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_38` */

DROP TABLE IF EXISTS `fundvaluedata_38`;

CREATE TABLE `fundvaluedata_38` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184040 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_39` */

DROP TABLE IF EXISTS `fundvaluedata_39`;

CREATE TABLE `fundvaluedata_39` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4185052 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_40` */

DROP TABLE IF EXISTS `fundvaluedata_40`;

CREATE TABLE `fundvaluedata_40` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184155 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_41` */

DROP TABLE IF EXISTS `fundvaluedata_41`;

CREATE TABLE `fundvaluedata_41` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4185860 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_42` */

DROP TABLE IF EXISTS `fundvaluedata_42`;

CREATE TABLE `fundvaluedata_42` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183790 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_43` */

DROP TABLE IF EXISTS `fundvaluedata_43`;

CREATE TABLE `fundvaluedata_43` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184344 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_44` */

DROP TABLE IF EXISTS `fundvaluedata_44`;

CREATE TABLE `fundvaluedata_44` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183867 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_45` */

DROP TABLE IF EXISTS `fundvaluedata_45`;

CREATE TABLE `fundvaluedata_45` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183240 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_46` */

DROP TABLE IF EXISTS `fundvaluedata_46`;

CREATE TABLE `fundvaluedata_46` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183787 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_47` */

DROP TABLE IF EXISTS `fundvaluedata_47`;

CREATE TABLE `fundvaluedata_47` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183336 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_48` */

DROP TABLE IF EXISTS `fundvaluedata_48`;

CREATE TABLE `fundvaluedata_48` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183773 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_49` */

DROP TABLE IF EXISTS `fundvaluedata_49`;

CREATE TABLE `fundvaluedata_49` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183714 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_50` */

DROP TABLE IF EXISTS `fundvaluedata_50`;

CREATE TABLE `fundvaluedata_50` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184042 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_51` */

DROP TABLE IF EXISTS `fundvaluedata_51`;

CREATE TABLE `fundvaluedata_51` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183195 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_52` */

DROP TABLE IF EXISTS `fundvaluedata_52`;

CREATE TABLE `fundvaluedata_52` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4182813 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_53` */

DROP TABLE IF EXISTS `fundvaluedata_53`;

CREATE TABLE `fundvaluedata_53` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4181875 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_54` */

DROP TABLE IF EXISTS `fundvaluedata_54`;

CREATE TABLE `fundvaluedata_54` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4182012 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_55` */

DROP TABLE IF EXISTS `fundvaluedata_55`;

CREATE TABLE `fundvaluedata_55` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4195339 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_56` */

DROP TABLE IF EXISTS `fundvaluedata_56`;

CREATE TABLE `fundvaluedata_56` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183633 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_57` */

DROP TABLE IF EXISTS `fundvaluedata_57`;

CREATE TABLE `fundvaluedata_57` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183887 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_58` */

DROP TABLE IF EXISTS `fundvaluedata_58`;

CREATE TABLE `fundvaluedata_58` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183545 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_59` */

DROP TABLE IF EXISTS `fundvaluedata_59`;

CREATE TABLE `fundvaluedata_59` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184822 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_60` */

DROP TABLE IF EXISTS `fundvaluedata_60`;

CREATE TABLE `fundvaluedata_60` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184345 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_61` */

DROP TABLE IF EXISTS `fundvaluedata_61`;

CREATE TABLE `fundvaluedata_61` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184376 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_62` */

DROP TABLE IF EXISTS `fundvaluedata_62`;

CREATE TABLE `fundvaluedata_62` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183205 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_63` */

DROP TABLE IF EXISTS `fundvaluedata_63`;

CREATE TABLE `fundvaluedata_63` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184297 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_64` */

DROP TABLE IF EXISTS `fundvaluedata_64`;

CREATE TABLE `fundvaluedata_64` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184269 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_65` */

DROP TABLE IF EXISTS `fundvaluedata_65`;

CREATE TABLE `fundvaluedata_65` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183026 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_66` */

DROP TABLE IF EXISTS `fundvaluedata_66`;

CREATE TABLE `fundvaluedata_66` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183445 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_67` */

DROP TABLE IF EXISTS `fundvaluedata_67`;

CREATE TABLE `fundvaluedata_67` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183370 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_68` */

DROP TABLE IF EXISTS `fundvaluedata_68`;

CREATE TABLE `fundvaluedata_68` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184143 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_69` */

DROP TABLE IF EXISTS `fundvaluedata_69`;

CREATE TABLE `fundvaluedata_69` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4195172 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_70` */

DROP TABLE IF EXISTS `fundvaluedata_70`;

CREATE TABLE `fundvaluedata_70` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183536 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_71` */

DROP TABLE IF EXISTS `fundvaluedata_71`;

CREATE TABLE `fundvaluedata_71` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4194791 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_72` */

DROP TABLE IF EXISTS `fundvaluedata_72`;

CREATE TABLE `fundvaluedata_72` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4193024 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_73` */

DROP TABLE IF EXISTS `fundvaluedata_73`;

CREATE TABLE `fundvaluedata_73` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4188566 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_74` */

DROP TABLE IF EXISTS `fundvaluedata_74`;

CREATE TABLE `fundvaluedata_74` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4182651 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_75` */

DROP TABLE IF EXISTS `fundvaluedata_75`;

CREATE TABLE `fundvaluedata_75` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183836 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_76` */

DROP TABLE IF EXISTS `fundvaluedata_76`;

CREATE TABLE `fundvaluedata_76` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183208 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_77` */

DROP TABLE IF EXISTS `fundvaluedata_77`;

CREATE TABLE `fundvaluedata_77` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4187345 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_78` */

DROP TABLE IF EXISTS `fundvaluedata_78`;

CREATE TABLE `fundvaluedata_78` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183269 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_79` */

DROP TABLE IF EXISTS `fundvaluedata_79`;

CREATE TABLE `fundvaluedata_79` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184344 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_80` */

DROP TABLE IF EXISTS `fundvaluedata_80`;

CREATE TABLE `fundvaluedata_80` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184078 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_81` */

DROP TABLE IF EXISTS `fundvaluedata_81`;

CREATE TABLE `fundvaluedata_81` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183875 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_82` */

DROP TABLE IF EXISTS `fundvaluedata_82`;

CREATE TABLE `fundvaluedata_82` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183617 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_83` */

DROP TABLE IF EXISTS `fundvaluedata_83`;

CREATE TABLE `fundvaluedata_83` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4182015 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_84` */

DROP TABLE IF EXISTS `fundvaluedata_84`;

CREATE TABLE `fundvaluedata_84` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183318 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_85` */

DROP TABLE IF EXISTS `fundvaluedata_85`;

CREATE TABLE `fundvaluedata_85` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4182788 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_86` */

DROP TABLE IF EXISTS `fundvaluedata_86`;

CREATE TABLE `fundvaluedata_86` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183978 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_87` */

DROP TABLE IF EXISTS `fundvaluedata_87`;

CREATE TABLE `fundvaluedata_87` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183296 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_88` */

DROP TABLE IF EXISTS `fundvaluedata_88`;

CREATE TABLE `fundvaluedata_88` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184581 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_89` */

DROP TABLE IF EXISTS `fundvaluedata_89`;

CREATE TABLE `fundvaluedata_89` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183869 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_90` */

DROP TABLE IF EXISTS `fundvaluedata_90`;

CREATE TABLE `fundvaluedata_90` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4185980 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_91` */

DROP TABLE IF EXISTS `fundvaluedata_91`;

CREATE TABLE `fundvaluedata_91` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4185985 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_92` */

DROP TABLE IF EXISTS `fundvaluedata_92`;

CREATE TABLE `fundvaluedata_92` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183925 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_93` */

DROP TABLE IF EXISTS `fundvaluedata_93`;

CREATE TABLE `fundvaluedata_93` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184002 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_94` */

DROP TABLE IF EXISTS `fundvaluedata_94`;

CREATE TABLE `fundvaluedata_94` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183334 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_95` */

DROP TABLE IF EXISTS `fundvaluedata_95`;

CREATE TABLE `fundvaluedata_95` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4183576 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_96` */

DROP TABLE IF EXISTS `fundvaluedata_96`;

CREATE TABLE `fundvaluedata_96` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4190613 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_97` */

DROP TABLE IF EXISTS `fundvaluedata_97`;

CREATE TABLE `fundvaluedata_97` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184724 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_98` */

DROP TABLE IF EXISTS `fundvaluedata_98`;

CREATE TABLE `fundvaluedata_98` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184144 DEFAULT CHARSET=utf8;

/*Table structure for table `fundvaluedata_99` */

DROP TABLE IF EXISTS `fundvaluedata_99`;

CREATE TABLE `fundvaluedata_99` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fundCode` varchar(6) NOT NULL,
  `valueDate` varchar(10) NOT NULL,
  `NAV` varchar(10) NOT NULL,
  `cumulativeNAV` varchar(10) NOT NULL,
  `dailyGrowthRate` varchar(10) NOT NULL,
  `subscribeStatus` varchar(20) NOT NULL,
  `redemptionStatus` varchar(20) NOT NULL,
  `melonCutting` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4184203 DEFAULT CHARSET=utf8;

/*Table structure for table `stockdata` */

DROP TABLE IF EXISTS `stockdata`;

CREATE TABLE `stockdata` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stockCode` varchar(255) NOT NULL,
  `valueDate` varchar(255) NOT NULL,
  `openingPrice` varchar(255) NOT NULL,
  `topPrice` varchar(255) NOT NULL,
  `closingPrice` varchar(255) NOT NULL,
  `dailyGrowthRate` varchar(255) NOT NULL,
  `lowestPrice` varchar(255) NOT NULL,
  `turnoverValue` varchar(255) NOT NULL,
  `moneyValue` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21128 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
