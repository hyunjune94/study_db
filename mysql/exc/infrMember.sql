use nct;

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

select * from infrMember;

update infrMember set
	ifmmGenderCd = '4'
    ,ifmmSavedCd = '5'
    ,ifmmMarriageCd = '12'
where 1=1
	and ifmmSeq = 2;
    
-- select 
-- 	a.ifcgSeq
--     ,a.ifcgName
--     ,b.ifcdSeq
--     ,b.ifcdName
--     ,b.ifcdOrder
--     ,b.ifcdUseNy
--     ,b.ifcdDelNy
-- from infrCodeGroup as a
-- 	left join infrCode as b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
-- where 1=1
-- 	and a.ifcgDelNy=0
-- 	and a.ifcgUseNy=1
-- 	and b.ifcdDelNy=0
-- 	and b.ifcdUseNy=1
-- order by
-- 	a.ifcgSeq, 
--     b.ifcdOrder desc;
    
select 
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmId
    ,a.ifmmGenderCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmGenderCd) as GenderName
    ,a.ifmmDob
    ,a.ifmmSavedCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmSavedCd) as ifmmSavedName
    ,a.ifmmMarriageCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmMarriageCd) as ifmmMarriageName
    ,b.ifmaTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as ifmaTypeName
    ,b.ifmaTitle
    ,b.ifmaAddress1
    ,b.ifmaAddress2
    ,b.ifmaZipCode
    ,c.ifaoTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeName
    ,c.ifaoSnsTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeName
    ,c.ifaoTitle
    ,c.ifaoUrl
    ,d.ifmeTypecd
    ,(select ifcdName from infrCode where ifcdSeq = d.ifmeTypeCd) as ifmeTypeName
    ,d.ifmeEmailFull
    ,e.ifmpTypecd
    ,(select ifcdName from infrCode where ifcdSeq = e.ifmpTypeCd) as ifmpTypeName
    ,e.ifmpDeviceCd
    ,(select ifcdName from infrCode where ifcdSeq = e.ifmpDeviceCd) as ifmpDeviceName
    ,e.ifmpTelecomCd
    ,(select ifcdName from infrCode where ifcdSeq = e.ifmpTelecomCd) as ifmpTelecomName
    ,e.ifmpNumber
    ,f.ifjqQuestionCd
    ,(select ifcdName from infrCode where ifcdSeq = f.ifjqQuestionCd) as ifjqQuestionName
    ,f.ifjqAnswer
from infrMember as a
	left join infrMemberAddress as b on b.ifmmSeq = a.ifmmSeq
	left join infrMemberAddressOnline as c on c.ifmmSeq = a.ifmmSeq
    left join infrMemberEmail as d on d.ifmmSeq = a.ifmmSeq
    left join infrMemberPhone as e on e.ifmmSeq = a.ifmmSeq
    left join infrMemberJoinQna as f on f.ifmmSeq = a.ifmmSeq
where 1=1
	and a.ifmmDelNy = 0
    

