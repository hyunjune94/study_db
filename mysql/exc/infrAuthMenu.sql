CREATE TABLE IF NOT EXISTS `infrAuthMenu` (
  `ifauSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifauRoleCd` BIGINT NULL,
  `ifauUseNy` TINYINT NULL,
  `ifauOrder` TINYINT NULL,
  `ifauDesc` VARCHAR(255) NULL,
  `ifauDelNy` TINYINT NOT NULL,
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
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmuSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifauSeq`),
  INDEX `fk_infrAuthMenu_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthMenu_infrMenu1_idx` (`ifmuSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrAuthMenu_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthMenu_infrMenu1`
    FOREIGN KEY (`ifmuSeq`)
    REFERENCES `infrMenu` (`ifmuSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrauthmenu`
(
`ifauRoleCd`,
`ifauUseNy`,
`ifauOrder`,
`ifauDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifatSeq`,
`ifmuSeq`
)
VALUES
(
1,
1,
8,
0,
now(),
now(),
now(),
now(),
3,
8
);

update infrAuthMenu set
	ifauOrder = 9
    ,ifmuSeq = 9
where 1=1
	and ifauSeq = 9;
    
select * from infrAuthMenu;

use nct;

select
	a.ifatSeq
    ,(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
	,a.ifmuSeq
    ,(select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifmuName
	,a.ifatSeq
    ,(select ifcdName from infrCode where ifcdSeq = a.ifauRoleCd) as ifauRoleName
from infrAuthMenu as a
	where 1=1
		and a.ifatSeq = 1;