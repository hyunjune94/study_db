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
