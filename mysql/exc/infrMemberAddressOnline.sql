CREATE TABLE IF NOT EXISTS `infrMemberAddressOnline` (
  `ifaoSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifaoTypeCd` BIGINT NULL,
  `ifaoDefaultNy` TINYINT NOT NULL,
  `ifaoSnsTypeCd` BIGINT NULL,
  `ifaoUrl` VARCHAR(100) NULL,
  `ifaoTitle` VARCHAR(100) NULL,
  `ifaoDelNy` TINYINT NOT NULL,
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
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifaoSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember100`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

select * from infrMemberAddressOnline;

insert into infrMemberAddressOnline (
	ifaoTypeCd
    ,ifaoDefaultNy
    ,ifaoSnsTypeCd
    ,ifaoUrl
    ,ifaoTitle
    ,ifaoDelNy
    ,regDateTime
    ,regDateTimeSvr
    ,modDateTime
    ,modDateTimeSvr
    ,ifmmSeq
) values (
	3
    ,1
    ,36
    ,'www.twitter.com'
    ,'twitter'
    ,0
    ,now()
    ,now()
    ,now()
    ,now()
    ,2
);

update infrMemberAddressOnline set
	ifaoSnsTypeCd = '36'
where 1=1
	and ifaoseq = 2;