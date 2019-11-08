-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema electricvehicles
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `electricvehicles` ;

-- -----------------------------------------------------
-- Schema electricvehicles
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `electricvehicles` DEFAULT CHARACTER SET utf8 ;
USE `electricvehicles` ;

-- -----------------------------------------------------
-- Table `electric_vehicles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `electric_vehicles` ;

CREATE TABLE IF NOT EXISTS `electric_vehicles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `Production_Start_Year` YEAR NOT NULL,
  `Production_End_Year` YEAR NULL,
  `Est_Number_Produced` INT NULL,
  `Top_Speed_MPH` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS elonmusk@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'elonmusk'@'localhost' IDENTIFIED BY 'elonmusk';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'elonmusk'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
