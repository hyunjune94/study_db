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
0,
0,
"강현준",
"hyunjune94",
"rkdguswns9$",
now(),
1,
"1994-07-28",
3,
1,
"blue",
1,
1,
1,
1,
"안녕하세요",
0,
now(),
now(),
now(),
now()
);

select * from infrMember as a
left join infrCode as b on b.Code
