CREATE TABLE IF NOT EXISTS `infrMember_base` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_name` VARCHAR(45) NULL,
  `member_id` VARCHAR(45) NULL,
  `member_pw` VARCHAR(100) NULL,
  `member_img` VARCHAR(45) NULL,
  `member_genderCd` TINYINT(1) NULL,
  `member_Homenumber` VARCHAR(45) NULL,
  `member_recommender` VARCHAR(45) NULL,
  `member_hobby` VARCHAR(45) NULL,
  `member_job` VARCHAR(45) NULL,
  `member_marriageCd` TINYINT(1) NULL,
  `member_weddingday` DATETIME NULL,
  `member_childCd` TINYINT(1) NULL,
  `member_intro` VARCHAR(100) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

desc infrmember_base;

insert into infrmember_base (
	member_name
	,member_id
	,member_pw
	,member_img
	,member_genderCd
	,member_Homenumber
	,member_recommender
	,member_hobby
	,member_job
	,member_marriageCd
	,member_weddingday
	,member_childCd
	,member_intro
) values (
	'강현준'
    ,'hyunjune94'
    ,'rkdguswns9$'
    ,'no-img'
    ,'1'
    ,'123-4567'
    ,'이젠it'
    ,'운동'
    ,'개발자'
    ,'1'
    ,'22-01-28'
    ,'2'
    ,'만나서 반갑습니다'    
);

select * from infrmember_base;

CREATE TABLE IF NOT EXISTS `infrcodeGroup` (
  `code` INT NOT NULL AUTO_INCREMENT,
  `Phonenumber_usageCd` TINYINT(1) NULL,
  `snsCd` TINYINT(1) NULL,
  `cityCd` TINYINT(1) NULL,
  `agreement_EmailMarketingCd` TINYINT(1) NULL,
  `agreement_MobileMarketingCd` TINYINT(1) NULL,
  `publisherCd` TINYINT(1) NULL,
  `pw_QCd` TINYINT(1) NULL,
  PRIMARY KEY (`code`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `infrcode` (
  `code` INT NOT NULL AUTO_INCREMENT,
  `infrcodeGroup_code` INT NOT NULL,
  `Phonenumber_usageCd` TINYINT(1) NULL,
  `snsCd` TINYINT(1) NULL,
  `cityCd` TINYINT(1) NULL,
  `agreement_EmailMarketingCd` TINYINT(1) NULL,
  `agreement_MobileMarketingCd` TINYINT(1) NULL,
  `publisherCd` TINYINT(1) NULL,
  `pw_QCd` TINYINT(1) NULL,
  PRIMARY KEY (`code`, `infrcodeGroup_code`),
  INDEX `fk_infrcode_infrcodeGroup1_idx` (`infrcodeGroup_code` ASC) VISIBLE,
  CONSTRAINT `fk_infrcode_infrcodeGroup1`
    FOREIGN KEY (`infrcodeGroup_code`)
    REFERENCES `infrcodeGroup` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc infrcodeGroup;
desc infrcode;
select * from infrcodeGroup;
select * from infrcode;

insert into infrcodeGroup (
	Phonenumber_usageCd
    ,snsCd
    ,cityCd
    ,agreement_EmailMarketingCd
    ,agreement_MobileMarketingCd
    ,publisherCd
    ,pw_QCd
) values (
	''
    ,''
    ,''
    ,''
    ,''
    ,''
    ,''
);
