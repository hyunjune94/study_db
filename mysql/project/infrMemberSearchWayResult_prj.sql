CREATE TABLE IF NOT EXISTS `infrMemberSearchWayResult` (
  `ifmswSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmswUseNy` TINYINT NULL,
  `ifmswOrder` TINYINT NULL,
  `ifmswDelNy` TINYINT NOT NULL,
  `ifmswDepartureFull` VARCHAR(100) NOT NULL,
  `ifmswDestinationFull` VARCHAR(100) NOT NULL,
  `ifmswDepartureCityCd` TINYINT NULL,
  `ifmswDestinationCityCd` TINYINT NULL,
  `searchWayseq` BIGINT NULL,
  `searchWayDevice` TINYINT NULL,
  `searchWayDateTime` DATETIME NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `infrMember_ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmswSeq`),
  INDEX `fk_infrSearchResult_infrMember_idx` (`infrMember_ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrSearchResult_infrMember`
    FOREIGN KEY (`infrMember_ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

select * from infrMemberSearchWayResult;

INSERT INTO `infrMemberSearchWayResult` 
(
`ifmswUseNy`
, `ifmswOrder`
, `ifmswDelNy`
, `ifmswDepartureFull`
, `ifmswDestinationFull`
, `ifmswDepartureCityCd`
, `ifmswDestinationCityCd`
, `searchWayDateTime`
, `modDateTime`
, `modDateTimeSvr`
, `infrMember_ifmmSeq`
) VALUES (
 1
, 1
, 0
, NULL
, NULL
, NULL
, NULL
, NULL
, NULL
, NULL
, NULL
);