CREATE TABLE IF NOT EXISTS `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seq`, `seq2`, `seq3`)
  );

insert into test2 (
seq2
,seq3
,name
) values (
1
,1
,'Hyunjune'
);

select * from test2;