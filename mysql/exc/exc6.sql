use world;

CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_no` INT UNSIGNED NOT NULL,
  `writer_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_book_writer_book61_idx` (`book6_no` ASC) VISIBLE,
  INDEX `fk_book_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  CONSTRAINT `fk_book_writer_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc book6;

insert into book6 (
name
) values (
'CSS'
);

insert into writer (
name
) values (
'박명수'
);

select * from book6; 
select * from writer; 

update book6 set
	name ='CSS'
where 1=1
	and no = 4;
    
select
	a.no
	,a.name
	,b.writer_no
    ,c.name
    from book6 as a
    left join book_writer b on b.book6_no = a.no
    left join writer c on c.no = b.writer_no;

