CREATE TABLE IF NOT EXISTS `infrMemberAddress` (
  `ifmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaDefaultNy` TINYINT NOT NULL,
  `ifmaTypeCd` BIGINT NULL,
  `ifmaTitle` VARCHAR(100) NULL,
  `ifmaAddress1` VARCHAR(100) NULL,
  `ifmaAddress2` VARCHAR(100) NULL,
  `ifmaZipcode` VARCHAR(50) NULL,
  `ifmaDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifmaSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember11`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

select * from infrMemberAddress;

insert into infrMemberAddress (
	ifmaDefaultNy
    ,ifmaTypeCd
    ,ifmaTitle
    ,ifmaAddress1
    ,ifmaAddress2
    ,ifmaZipCode
    ,ifmaDelNy
	,regDateTime
    ,regDateTimeSvr
    ,modDateTime
    ,modDateTimeSvr
    ,ifmmSeq
) VALUES (
	1
    ,42
    ,'강원도 인제군 기린면 101-702'
    ,'강원도 인제군'
    ,'기린면 101-702'
    ,'98765'
    ,0
    ,now()
    ,now()
    ,now()
    ,now()
    ,2
) ;


update infrMemberAddress set
	ifmaTitle="경기도 고양시 일산서구 주엽2동 202-1402"
where 1=1
	and ifmaSeq = 1;