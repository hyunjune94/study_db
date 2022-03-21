use prj;
CREATE TABLE IF NOT EXISTS `infrCode` (
  `infrCodeGroup_ifcgSeq` BIGINT UNSIGNED NOT NULL,
  `ifcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdName` VARCHAR(50) NULL,
  `ifcdNameEng` VARCHAR(50) NULL,
  `ifcdUseNy` TINYINT NULL,
  `ifcdOrder` TINYINT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regseq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modseq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modeDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifcdSeq`),
  INDEX `fk_infrCode_infrCodeGroup1_idx` (`infrCodeGroup_ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup1`
    FOREIGN KEY (`infrCodeGroup_ifcgSeq`)
    REFERENCES `infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

select * from infrCode;

INSERT INTO `infrCode` 
(
`infrCodeGroup_ifcgSeq`
, `ifcdName`
, `ifcdUseNy`
, `ifcdOrder`
, `ifcdDelNy`
, `regDateTime`
, `regDateTimeSvr`
, `modDateTime`
, `modeDateTimeSvr`
) VALUES (
5
, "당구장"
, 1
, 29
, 0
, now()
, now()
, now()
, now()
);