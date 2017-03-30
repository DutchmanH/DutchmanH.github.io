-- MySQL Script generated by MySQL Workbench
-- 06/04/16 16:37:41
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema OBLT2
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `OBLT2` ;

-- -----------------------------------------------------
-- Schema OBLT2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `OBLT2` DEFAULT CHARACTER SET utf8 ;
USE `OBLT2` ;

-- -----------------------------------------------------
-- Table `OBLT2`.`rekeningen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `OBLT2`.`rekeningen` ;

CREATE TABLE IF NOT EXISTS `OBLT2`.`rekeningen` (
  `rekening_iban` VARCHAR(18) NOT NULL,
  `rekening_saldo` DECIMAL(15,2) NOT NULL,
  PRIMARY KEY (`rekening_iban`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OBLT2`.`klanten`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `OBLT2`.`klanten` ;

CREATE TABLE IF NOT EXISTS `OBLT2`.`klanten` (
  `klant_id` INT NOT NULL AUTO_INCREMENT,
  `klant_naam` VARCHAR(100) NOT NULL,
  `klant_achternaam` VARCHAR(100) NOT NULL,
  `klant_geboortedatum` DATE NOT NULL,
  `klant_email` VARCHAR(100) NOT NULL,
  `klant_telnr` INT NOT NULL,
  `klant_straat` VARCHAR(100) NOT NULL,
  `klant_huisnummer` INT NOT NULL,
  `klant_woonplaats` VARCHAR(100) NOT NULL,
  `klant_postcode` VARCHAR(100) NOT NULL,
  `klant_geslacht` VARCHAR(5) NULL,
  `klant_actief` TINYINT(1) NOT NULL DEFAULT 0,
  `rekeningen_rekening_iban` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`klant_id`),
  INDEX `fk_klanten_rekeningen1_idx` (`rekeningen_rekening_iban` ASC),
  CONSTRAINT `fk_klanten_rekeningen1`
    FOREIGN KEY (`rekeningen_rekening_iban`)
    REFERENCES `OBLT2`.`rekeningen` (`rekening_iban`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OBLT2`.`login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `OBLT2`.`login` ;

CREATE TABLE IF NOT EXISTS `OBLT2`.`login` (
  `login_id` INT NOT NULL AUTO_INCREMENT,
  `login_wachtwoord` CHAR(128) NULL,
  `login_hash` CHAR(128) NULL,
  `rekeningen_rekening_iban` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`login_id`),
  INDEX `fk_login_rekeningen1_idx` (`rekeningen_rekening_iban` ASC),
  CONSTRAINT `fk_login_rekeningen1`
    FOREIGN KEY (`rekeningen_rekening_iban`)
    REFERENCES `OBLT2`.`rekeningen` (`rekening_iban`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;