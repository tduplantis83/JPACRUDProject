-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema electricvehicle
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `electricvehicle` ;

-- -----------------------------------------------------
-- Schema electricvehicle
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `electricvehicle` DEFAULT CHARACTER SET utf8 ;
USE `electricvehicle` ;

-- -----------------------------------------------------
-- Table `electric_vehicle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `electric_vehicle` ;

CREATE TABLE IF NOT EXISTS `electric_vehicle` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(45) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  `Production_Start_Year` YEAR(4) NULL DEFAULT NULL,
  `Production_End_Year` YEAR(4) NULL DEFAULT NULL,
  `Est_Number_Produced` INT(11) NULL DEFAULT NULL,
  `Top_Speed_MPH` INT(4) NULL DEFAULT NULL,
  `Original_Cost_USD` DECIMAL(7,2) NULL DEFAULT NULL,
  `Max_Range_In_Miles` INT(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS elonmusk@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'elonmusk'@'localhost' IDENTIFIED BY 'elonmusk';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'elonmusk'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `electric_vehicle`
-- -----------------------------------------------------
START TRANSACTION;
USE `electricvehicle`;
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (1, 'Baker', 'Electric', 1910, 1915, 5000, 14, 2300, 50);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (2, 'Detroit', 'Electric', 1907, 1939, 5000, 20, 3000, 80);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (3, 'Henney', 'Kilowatt', 1958, 1960, 50, 60, 3600, 60);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (4, 'Peugeot', '106 Electrique', 1995, 2003, 6400, 56, NULL, 62);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (5, 'General Motors', 'EV1', 1996, 2003, 2000, 80, 40000, 150);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (6, 'Honda', 'EV Plus', 1997, 1999, 350, 80, 53000, 110);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (7, 'Toyota', 'RAV4 EV', 1997, 2002, 1249, 78, 40000, 120);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (8, 'Ford', 'Ranger EV', 1998, 2002, 1500, 70, 50000, 82);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (9, 'Nissan', 'Altra EV', 1998, 2000, 140, 75, 50999, 120);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (10, 'Global Electric Motorcars', 'Neighborhood Electric Vehicle', 1998, NULL, 50000, 25, 10299, 65);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (11, 'TH!NK City', 'PIV3', 1999, 2002, 1005, 56, 21734, 53);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (12, 'REVAi', 'G-Wiz', 2001, 2012, 2000, 45, 10247, 50);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (13, 'Zap', 'Zebra', 2006, NULL, 200, 40, 10500, 40);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (14, 'Modec', 'Commercial Vehicles', 2007, NULL, 100, NULL, NULL, 100);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (15, 'Cleanova', 'Kangoo', 2009, NULL, 7000, NULL, NULL, 130);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (16, 'Smart', 'For Fortwo Electric Drive', 2008, NULL, 100, 75, 24555, 68);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (17, 'Tesla', 'Roadster', 2008, 2012, 2450, 130, 92000, 244);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (18, 'Mitsubishi', 'I MiEV', 2009, NULL, 32000, 80, 43000, 100);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (19, 'Nissan', 'Leaf', 2010, NULL, 370000, 93, 44600, 100);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (20, 'Tesla', 'Model S', 2012, NULL, 250000, 155, 89500, 294);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (21, 'Tesla', 'Model X', 2015, NULL, 106689, 155, 95500, 257);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (22, 'Renault', 'Zoe', 2012, NULL, 50000, NULL, 32880, 150);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (23, 'BMW', 'I3', 2013, NULL, 60000, NULL, 44450, 153);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (24, 'Kia', 'Soul EV', 2014, NULL, 10210, NULL, 33950, 93);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (25, 'Volkswagen', 'e-Golf', 2014, NULL, 19000, NULL, 31895, 83);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (26, 'Tesla', 'Model 3', 2017, NULL, 100000, 140, 35000, 310);
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`) VALUES (27, 'Tesla', 'Model Y', 2020, NULL, NULL, 140, 39000, 300);

COMMIT;

