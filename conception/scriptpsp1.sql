-- MySQL Script generated by MySQL Workbench
-- Fri Jul 23 11:29:06 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pspkarate
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pspkarate` ;

-- -----------------------------------------------------
-- Schema pspkarate
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pspkarate` DEFAULT CHARACTER SET utf8 ;
USE `pspkarate` ;

-- -----------------------------------------------------
-- Table `pspkarate`.`calendrier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`calendrier` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`calendrier` (
  `idcalendrier` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `evenement` VARCHAR(45) NOT NULL,
  `lieu` VARCHAR(45) NOT NULL,
  `thème` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcalendrier`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pspkarate`.`adhérant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`adhérant` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`adhérant` (
  `idadhérant` INT NOT NULL AUTO_INCREMENT,
  `calendrier_idcalendrier` INT NOT NULL,
  PRIMARY KEY (`idadhérant`),
  INDEX `fk_adhérant_calendrier1_idx` (`calendrier_idcalendrier` ASC) VISIBLE,
  CONSTRAINT `fk_adhérant_calendrier1`
    FOREIGN KEY (`calendrier_idcalendrier`)
    REFERENCES `pspkarate`.`calendrier` (`idcalendrier`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pspkarate`.`club`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`club` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`club` (
  `idclub` INT NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `adresse` VARCHAR(45) NOT NULL,
  `siege sociale` VARCHAR(45) NOT NULL,
  `licenceClub` INT NOT NULL,
  PRIMARY KEY (`idclub`),
  UNIQUE INDEX `licenceClub_UNIQUE` (`licenceClub` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pspkarate`.`grade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`grade` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`grade` (
  `idgrade` INT NOT NULL,
  `couleur` VARCHAR(45) NOT NULL,
  `accès` TINYINT NOT NULL,
  `kata_nom` INT NOT NULL,
  PRIMARY KEY (`idgrade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pspkarate`.`kata`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`kata` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`kata` (
  `nomkatas` INT NOT NULL,
  `media1` VARCHAR(45) NULL DEFAULT NULL,
  `media2` VARCHAR(45) NULL DEFAULT NULL,
  `grade_idgrade` INT NOT NULL,
  PRIMARY KEY (`nomkatas`),
  INDEX `fk_kata_grade1_idx` (`grade_idgrade` ASC) VISIBLE,
  CONSTRAINT `fk_kata_grade1`
    FOREIGN KEY (`grade_idgrade`)
    REFERENCES `pspkarate`.`grade` (`idgrade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pspkarate`.`professeur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`professeur` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`professeur` (
  `idprofesseur` INT NOT NULL,
  `calendrier_idcalendrier` INT NOT NULL,
  PRIMARY KEY (`idprofesseur`),
  INDEX `fk_professeur_calendrier1_idx` (`calendrier_idcalendrier` ASC) VISIBLE,
  CONSTRAINT `fk_professeur_calendrier1`
    FOREIGN KEY (`calendrier_idcalendrier`)
    REFERENCES `pspkarate`.`calendrier` (`idcalendrier`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pspkarate`.`sportif`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`sportif` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`sportif` (
  `idsportif` INT NOT NULL,
  `nom` VARCHAR(25) NOT NULL,
  `prenom` VARCHAR(25) NOT NULL,
  `n°licence` INT NOT NULL,
  `adresse` VARCHAR(45) NOT NULL,
  `type` TINYINT NOT NULL,
  `club_idclub` INT NOT NULL,
  `grade_idgrade` INT NOT NULL,
  `professeur_idprofesseur` INT NOT NULL,
  `adhérant_idadhérant` INT NOT NULL,
  PRIMARY KEY (`idsportif`),
  UNIQUE INDEX `n°licence_UNIQUE` (`n°licence` ASC) VISIBLE,
  INDEX `fk_sportif_club_idx` (`club_idclub` ASC) VISIBLE,
  INDEX `fk_sportif_grade1_idx` (`grade_idgrade` ASC) VISIBLE,
  INDEX `fk_sportif_professeur1_idx` (`professeur_idprofesseur` ASC) VISIBLE,
  INDEX `fk_sportif_adhérant1_idx` (`adhérant_idadhérant` ASC) VISIBLE,
  CONSTRAINT `fk_sportif_club`
    FOREIGN KEY (`club_idclub`)
    REFERENCES `pspkarate`.`club` (`idclub`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportif_grade1`
    FOREIGN KEY (`grade_idgrade`)
    REFERENCES `pspkarate`.`grade` (`idgrade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportif_professeur1`
    FOREIGN KEY (`professeur_idprofesseur`)
    REFERENCES `pspkarate`.`professeur` (`idprofesseur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportif_adhérant1`
    FOREIGN KEY (`adhérant_idadhérant`)
    REFERENCES `pspkarate`.`adhérant` (`idadhérant`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pspkarate`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pspkarate`.`role` ;

CREATE TABLE IF NOT EXISTS `pspkarate`.`role` (
  `idrole` INT NOT NULL,
  `sportif_idsportif` INT NOT NULL,
  PRIMARY KEY (`idrole`),
  INDEX `fk_role_sportif1_idx` (`sportif_idsportif` ASC) VISIBLE,
  CONSTRAINT `fk_role_sportif1`
    FOREIGN KEY (`sportif_idsportif`)
    REFERENCES `pspkarate`.`sportif` (`idsportif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
