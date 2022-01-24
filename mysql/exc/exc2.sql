use world;
    
    
 CREATE TABLE IF NOT EXISTS `cafe` (
  `seq` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `tables` INT NULL,
  `chairs` INT NULL,
  `address` VARCHAR(100) NULL,
  `location` INT NULL COMMENT '서울:1 경기:2 부산:3 ..etc',
  `ceo` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci