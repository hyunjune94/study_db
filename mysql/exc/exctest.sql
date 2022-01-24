use world;

create table layout (
	seq INT,
    book_img VARCHAR(100),
    book_name VARCHAR(100),
    book_writer VARCHAR(45),
    book_publisher VARCHAR(45),
    book_cost INT,
    book_sells INT,
    book_review INT,
    book_point INT,
    book_deliveryD DATETIME,
    book_sub VARCHAR(100),
    book_sub2 VARCHAR(100),
    book_sub3 VARCHAR(100)
);

create table layout2 (
	seq INT,
    space_img VARCHAR(100),
    space_name VARCHAR(45),
    space_sub VARCHAR(100),
    space_timeLimit INT,
    space_peopleLimit INT,
    space_facility VARCHAR(200)
);