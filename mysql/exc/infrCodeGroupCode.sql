INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

select * from infrCodeGroup;

INSERT INTO `nct`.`infrcode`
(
`ifcdSeq`,
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`infrCodeGroup_ifcgSeq`)
VALUES
(
46,
"당신의 특기는?",
1,
3,
0,
now(),
now(),
now(),
now(),
14);

select * from infrCode;

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
	a.ifcgSeq, 
    b.ifcdOrder desc;
