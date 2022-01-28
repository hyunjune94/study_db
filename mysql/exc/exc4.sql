use world;

CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review_copy1_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review_copy1_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc book5;
desc review5;

insert into book5 (
name
) values (
'직접배우는 C++'
);

select * from book5;

insert into review5 (
	comment
    ,book5_no 
) values (
	'우와 책 재미있습니다~!'
    ,4
);

select * from review5;

select
a.name
,b.comment
from book5 as a
left join review5 as b on b.book5_no = a.no;

select
a.comment
,b.name
from review5 as a 
left join book5 as b on b.no = a.book5_no;

select
a.name
, (select count(no) from review5 where book5_no = a.no) as count
from book5 as a;

