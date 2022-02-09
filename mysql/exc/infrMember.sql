INSERT INTO `nct`.`infrmember`
(
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPassword`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
`ifmmFavoriteColor`,
`ifmmRecommenderSeq`,
`ifmmEmailConsentNy`,
`ifmmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDesc`,
`ifmmDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
0,
"홍길동",
"ghdrlfehd99",
"ghdrlfehd9(",
now(),
2,
"1984-11-21",
2,
2,
"blue",
1,
1,
1,
1,
"안녕하세요 홍길동입니다",
0,
now(),
now(),
now(),
now()
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
	a.ifcgSeq, 
    b.ifcdOrder desc;
