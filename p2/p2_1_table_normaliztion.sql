SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


USE pandemic ;


-- -----------------------------------------------------
-- Table `diseases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS diseases (
  id INT NOT NULL AUTO_INCREMENT,
  disease_name VARCHAR(50) NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `entities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS entities (
  id INT NOT NULL AUTO_INCREMENT,
  region_name VARCHAR(50) NULL,
  code_name VARCHAR(10) NULL,
  PRIMARY KEY (id)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `infectious_cases_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS infectious_cases_log (
  id INT NOT NULL AUTO_INCREMENT,
  entity_id INT NULL,
  year YEAR NULL,
  disease_id INT NULL,
  number_of_cases FLOAT NULL,
  PRIMARY KEY (id),
  INDEX `infection-entity_idx` (entity_id ASC) VISIBLE,
  INDEX `infection-disease_idx` (disease_id ASC) VISIBLE,
  CONSTRAINT `infection-entity`
    FOREIGN KEY (entity_id)
    REFERENCES entities (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `infection-disease`
    FOREIGN KEY (disease_id)
    REFERENCES diseases (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
