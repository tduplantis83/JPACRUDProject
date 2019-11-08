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
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `Production_Start_Year` YEAR(4) NOT NULL,
  `Production_End_Year` YEAR(4) NULL DEFAULT NULL,
  `Est_Number_Produced` INT(11) NULL DEFAULT NULL,
  `Top_Speed_MPH` INT(11) NULL DEFAULT NULL,
  `Original_Cost_USD` DECIMAL(7,2) NULL DEFAULT NULL,
  `Max_Range_In_Miles` INT(11) NULL DEFAULT NULL,
  `Comments` VARCHAR(500) NULL DEFAULT NULL,
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
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (1, 'Baker', 'Electric', 1901, 1915, 5000, 14, 2300, 50, 'One of the earliest electric cars. Reputedly easy to drive.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (2, 'Detroit', 'Electric', 1907, 1939, 5000, 20, 3000, 80, 'Sold mainly to women and physicians.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (3, 'Henney', 'Kilowatt', 1958, 1960, 50, 60, 3600, 60, 'The first transistor-based electric car; outfitted with modern hydraulic brakes.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (4, 'Peugeot', '106 Electrique', 1995, 2003, 6400, 56, , 62, 'Built by Heuliez and also sold under the name Citroën Saxo. Mainly sold to French administration. Nickel-cadmium battery powered.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (5, 'General Motors', 'EV1', 1996, 2003, 2000, 80, 40000, 150, 'For lease only, all recovered from customers by GM, most destroyed.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (6, 'Honda', 'EV Plus', 1997, 1999, 350, 80, 53000, 110, 'First BEV from a major automaker without lead acid batteries. Twenty-four 12-volt NiMH batteries');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (7, 'Toyota', 'RAV4 EV', 1997, 2002, 1249, 78, 40000, 120, 'Some leased and sold on US east and west coasts, supported. Toyota agreed to stop crushing.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (8, 'Ford', 'Ranger EV', 1998, 2002, 1500, 70, 50000, 82, 'Some sold, most leased; almost all recovered and most destroyed. Ford allowed reconditioning and sale of a limited quantity to former leaseholders by lottery. Estimated only 200 surviving.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (9, 'Nissan', 'Altra EV', 1998, 2000, 140, 75, 50999, 120, 'Mid-sized station wagon designed from the ground up as the first BEV to use Li-ion batteries, 100,000 miles (161,000 km) battery lifetime.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (10, 'Global Electric Motorcars', 'Neighborhood Electric Vehicle', 1998, , 50000, 25, 10299, 65, '');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (11, 'TH!NK City', 'PIV3', 1999, 2002, 1005, 56, 21734, 53, 'Two seat, Nickel-cadmium batteries. Next generation vehicle production planned for fall 2007.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (12, 'REVAi', 'G-Wiz', 2001, 2012, 2000, 45, 10247, 50, 'Indian-built city car (sold in England as the \"G-Wiz\").');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (13, 'Zap', 'Zebra', 2006, , 200, 40, 10500, 40, 'Chinese built sedan and truck');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (14, 'Modec', 'Commercial Vehicles', 2007, , 100, , , 100, 'UK built trucks and Vans');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (15, 'Cleanova', 'Kangoo', 2009, , 7000, , , 130, 'French built delivery vans');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (16, 'Smart', 'For Fortwo Electric Drive', 2008, , 100, 75, 24555, 68, 'micro car, only used for pilot project');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (17, 'Tesla', 'Roadster', 2008, 2012, 2450, 130, 92000, 244, 'Sold to customers in the United States and Europe.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (18, 'Mitsubishi', 'I MiEV', 2009, , 32000, 80, 43000, 100, 'Fleet leasing began in July 2009, and sales to the public in Japan in April 2010 and in Hong Kong in May 2010.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (19, 'Nissan', 'Leaf', 2010, , 370000, 93, 44600, 100, 'Introduced in Japan and the U.S. in December 2010.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (20, 'Tesla', 'Model S', 2012, , 250000, 155, 89500, 294, 'Introduced in the U.S. in June 2012.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (21, 'Tesla', 'Model X', 2015, , 106689, 155, 95500, 257, 'Unveiled in February 2012');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (22, 'Renault', 'Zoe', 2012, , 50000, , 32880, 150, 'Introduced in France in December 2012.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (23, 'BMW', 'I3', 2013, , 60000, , 44450, 153, 'Introduced in the Germany in November 2013.');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (23, 'Kia', 'Soul EV', 2014, , 10210, , 33950, 93, '');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (25, 'Volkswagen', 'e-Golf', 2014, , 19000, , 31895, 83, '');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (26, 'Tesla', 'Model 3', 2017, , 100000, 140, 35000, 310, '');
INSERT INTO `electric_vehicle` (`id`, `make`, `model`, `Production_Start_Year`, `Production_End_Year`, `Est_Number_Produced`, `Top_Speed_MPH`, `Original_Cost_USD`, `Max_Range_In_Miles`, `Comments`) VALUES (27, 'Tesla', 'Model Y', 2020, , , 140, 39000, 300, '');

COMMIT;

