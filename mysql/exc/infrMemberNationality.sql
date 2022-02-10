CREATE TABLE IF NOT EXISTS `infrMemberNationality` (
  `ifmnSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmnDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regseq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modseq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  `ifmaSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmnSeq`),
  INDEX `fk_infrMemberNationality_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  INDEX `fk_infrMemberNationality_infrMemberAddress1_idx` (`ifmaSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberNationality_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrMemberNationality_infrMemberAddress1`
    FOREIGN KEY (`ifmaSeq`)
    REFERENCES `infrMemberAddress` (`ifmaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

alter table infrMemberNationality add ifmnDefaultNy tinyint after ifmnSeq;