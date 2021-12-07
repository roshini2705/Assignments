
CREATE TABLE IF NOT EXISTS newauthor (
    aut_id VARCHAR(8) NOT NULL,
    aut_name VARCHAR(50) NOT NULL,
    country VARCHAR(25) NOT NULL,
    home_city VARCHAR(25) NOT NULL
);
show tables;
CREATE TABLE IF NOT EXISTS newbook_mast (
    book_id VARCHAR(15) NOT NULL UNIQUE,
    book_name VARCHAR(50),
    isbn_no VARCHAR(15) NOT NULL UNIQUE,
    cate_id VARCHAR(8),
    aut_id VARCHAR(8),
    pub_id VARCHAR(8),
    dt_of_pub DATE,
    pub_lang VARCHAR(15),
    no_page DECIMAL(5 , 0 ) CHECK (no_page > 0),
    book_price DECIMAL(8 , 2 ),
    PRIMARY KEY (book_id)
);
insert into newauthor values("101","Chetan Bhagat","India","Delhi");
select * from newauthor;
insert into newauthor values("101","Chetan Bhagat","India","Delhi");
select * from newbook_mast;
CREATE TABLE IF NOT EXISTS newbook_mast (
    book_id  VARCHAR(15) NOT NULL UNIQUE,
    book_name VARCHAR(50),
    isbn_no VARCHAR(15) NOT NULL UNIQUE,
    cate_id VARCHAR(8),
    aut_id VARCHAR(8),
    pub_id VARCHAR(8),
    dt_of_pub DATE CHECK (dt_of_pub LIKE '--/--/----'),
    pub_lang VARCHAR(15),
    no_page DECIMAL(5 , 0 ) CHECK (no_page > 0),
    book_price DECIMAL(8 , 2 ),
    PRIMARY KEY (book_id)
);
insert into newbook_mast values('12/05/1999');
CREATE TABLE IF NOT EXISTS newauthor (
    aut_id VARCHAR(8) NOT NULL,
    aut_name VARCHAR(50) NOT NULL,
    country VARCHAR(25) NOT NULL,
    home_city VARCHAR(25) NOT NULL,
    UNIQUE (aut_id)
);

CREATE TABLE IF NOT EXISTS newauthor1(aut_id varchar(8) NOT NULL PRIMARY KEY,aut_name varchar(50) NOT NULL,country varchar(25) NOT NULL,home_city varchar(25) NOT NULL);


CREATE TABLE IF NOT EXISTS newbook_mast (book_id varchar(15) NOT NULL PRIMARY KEY,book_name varchar(50),isbn_no varchar(15)NOT NULL,cate_id varchar(8), aut_id varchar(8),pub_id varchar(8),dt_of_pub date,pub_lang varchar(15) ,no_page decimal(5,0),book_price decimal(8,2) ,INDEX (aut_id), FOREIGN KEY(aut_id) REFERENCES newauthor(aut_id), INDEX(pub_id),FOREIGN KEY(pub_id) REFERENCES newpublisher(pub_id));

create table employee1 (empid int not null,empname varchar(20), deptid int, primary key(empid), foreign key(deptid) references department(deptid));
create table department (deptid int not null primary key, deptname varchar(20), empid int);
desc employee1;
desc department;










