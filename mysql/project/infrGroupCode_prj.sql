use prj;

CREATE TABLE IF NOT EXISTS `infrCodeGroup` (
  `ifcgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcgName` VARCHAR(50) NULL,
  `ifcgNameEng` VARCHAR(50) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcgDesc` VARCHAR(255) NULL,
  `ifcgDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifcgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

select * from infrCodeGroup
limit 1, 5
;

select count(*) from prj.infrCodeGroup;

INSERT INTO `infrCodeGroup` (
 `ifcgName`
, `ifcgUseNy`
, `ifcgOrder`
, `ifcgDelNy`
, `regDateTime`
, `regDateTimeSvr`
, `modDateTime`
, `modeDateTimeSvr`
) VALUES (
 "장소.종류"
, 1
, 5
, 0
, now()
, now()
, now()
, now()
);

select
	a.ifcgSeq
	,a.ifcgName
	,b.ifcdSeq
	,b.ifcdName
	,b.ifcdOrder
	,b.ifcdUseNy
	,b.ifcdDelNy
from infrCodeGroup as a 
	left join infrCode as b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
where 1=1
	and a.ifcgDelNy=0
    and a.ifcgUseNy=1
    and b.ifcdDelNy=0
    and b.ifcdUseNy=1
order by 
	a.ifcgSeq;
    
select
	a.ifcgSeq
    , a.ifcgName
from prj.infrCodeGroup a
where 1=1
	and ifcgDelNy = 0
;

