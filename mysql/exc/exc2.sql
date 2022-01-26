use world;
CREATE TABLE IF NOT EXISTS `book3` (
  `no` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`));
  
  CREATE TABLE IF NOT EXISTS `publisher` (
  `no` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`));
  
  desc book3;
  desc publisher;  
  
  insert into book3 (
  no
  ,name
  ,publisher_cd
  ) values (
  4
  ,'4차산업혁명의미래'
  ,4
  );  
  
  insert into publisher (
  no
  ,name
  ) values (
  3
  ,'아이콕스'
  );
    
  select * from book3;
  select * from publisher;
  
  select
	  a.no
	  ,a.name
	  ,a.publisher_cd
	  ,b.name
  from book3 as a
  -- left join publisher as b on b.no = a.publisher_cd;
  inner join publisher as b on b.no = a.publisher_cd;
  
  select
	  a.no
	  ,a.name
	  ,a.publisher_cd
	  ,(select name from publisher where no = a.publisher_cd)
  from book3 as a;
  
  select
	  a.no
	  ,a.name
	  ,a.publisher_cd
	  ,(select name from publisher where no = a.publisher_cd) as publisher_cd
  from book3 as a;
  
  
  