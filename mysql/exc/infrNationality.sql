INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnacode3Char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
"미국",
"US",
"USA",
1,
2,
0,
now(),
now(),
now(),
now()
);

select * from infrNationality;
