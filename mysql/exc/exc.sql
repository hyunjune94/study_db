use world;

show tables;

-- 테이블 생성
create table member (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table member2 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

 -- 테이블 삭제 
drop table member2;
drop table member;

-- 데이터 입력
insert into cafe (
	seq
	, name
	, tables
	, chairs
	, address
	, location
	, ceo
) values (
	1
	, '별다방'
	, 1
	, 2
	, '경기도 고양시'
	, 1
	, '장동건'
);
-- varchar 은 ' 또는 " 로 감싼다.
-- int 는 사용하지 않아도 된다.
-- 컴마는 앞쪽을 선호 : 이건 호불호가 갈린다.

-- 데이터 조회
select * from cafe;

select * from cafe where seq=3;
select * from cafe where location = 6;
select * from cafe where name = '메가커피';
select * from cafe where tables = 7 and chairs = 11;
select * from cafe where address='경기도 고양시' or ceo = '유재석'; 

select * from cafe where location > 5;
select * from cafe where location < 5;
select * from cafe where location >= 5;
select * from cafe where location <= 5;
select * from cafe where location <> 5;

select * from cafe where name like '%가커%';
select * from cafe where name like '마%';
select * from cafe where name like '%A';
 use world;
 
-- 테이블 수정
-- 컬럼 추가
alter table test add tel varchar(50);
desc test; -- 테이블 상태 확인(dexcribe)

-- 컬럼 삭제
alter table test drop tel;

-- 컬럼 타입 변경
alter table test modify tel int;
alter table test modify tel varchar(45);

-- 컬럼 이름 변경
alter table test change tele tel int;

select * from test;

-- 데이터 수정
update test set
	name = 'Andrew'
    ,tel = '222'
where 1=1
	and seq = 1;

-- 데이터 삭제
delete from test
where 1=1
	and seq = 2;

-- 전체 데이터 삭제
truncate test;
