CREATE DATABASE mt_db;
USE mt_db;
Create table CUSTOMER_MASTER
(
CUSTOMER_ID Varchar(10),
CUSTOMER_NAME Varchar(30) NOT NULL,
CONTACT_NO BIGINT(10),
CONTACT_ADD Varchar(20),
DATE_OF_REGISTRATION Date NOT NULL,
AGE Varchar(15)NOT NULL,
Constraint MT_cts1 PRIMARY KEY(CUSTOMER_ID)
);
Create table LIBRARY_CARD_MASTER
(
CARD_ID Varchar(10),
DESCRIPTION Varchar(30) NOT NULL,
AMOUNT BIGINT(50),
NUMBER_OF_YEARS bigint(10) NOT NULL,
Constraint MT_cts2 PRIMARY KEY(CARD_ID)
);
Create table MOVIES_MASTER
(
MOVIE_ID Varchar(10), 
MOVIE_NAME Varchar(50) NOT NULL,
RELEASE_DATE Varchar(30) NOT NULL,
LANGUAGE Varchar(30),
RATING int(2),
DURATION VARCHAR(10) NOT NULL, 
MOVIE_TYPE Varchar(3),
MOVIE_CATEGORY VARCHAR(20) NOT NULL,
DIRECTOR VARCHAR(20) NOT NULL, 
LEAD_ROLE_1 Varchar(3) NOT NULL,
LEAD_ROLE_2 VARCHAR(4) NOT NULL,
RENT_COST BIGINT(10),
Constraint MT_cts4 PRIMARY KEY(MOVIE_ID) 
);
Create table CUSTOMER_CARD_DETAILS
(
CUSTOMER_ID Varchar(10),
CARD_ID VARCHAR(10),
ISSUE_DATE DATE NOT NULL,
Constraint MT_cts3 PRIMARY KEY(CUSTOMER_ID),
Constraint MT_CTS41 FOREIGN KEY(CUSTOMER_ID) References
CUSTOMER_MASTER(CUSTOMER_ID),
 Constraint MT_CTS42 FOREIGN KEY(CARD_ID) References
LIBRARY_CARD_MASTER(CARD_ID)
);
Create table CUSTOMER_ISSUE_DETAILS
(
ISSUE_ID Varchar(10) NOT NULL,
CUSTOMER_ID Varchar(10) NOT NULL,
MOVIE_ID VARCHAR(10), 
ISSUE_DATE Date NOT NULL,
RETURN_DATE Date NOT NULL,
 ACTUAL_DATE_RETURN Date NOT NULL,
Constraint MT_cts5 PRIMARY KEY(ISSUE_ID),
 Constraint MT_Mem FOREIGN KEY(CUSTOMER_ID) References
CUSTOMER_MASTER(CUSTOMER_ID),
 Constraint MT_Mem1 FOREIGN KEY(MOVIE_ID) References
MOVIES_MASTER(MOVIE_ID)
);

Insert into CUSTOMER_MASTER Values('CUS001', 'AMIT',
9876543210,'ADD1', '2012-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS002', 'ABDHUL',
8765432109,'ADD2', '2012-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS003', 'GAYAN',
7654321098,'ADD3', '2012-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS004', 'RADHA',
6543210987,'ADD4', '2012-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS005', 'GURU', NULL,'ADD5',
'2012-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS006', 'MOHAN',
4321098765,'ADD6', '2012-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS007', 'NAME7',
3210987654,'ADD7', '2012-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS008', 'NAME8',
2109876543,'ADD8', '2013-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS009', 'NAME9', NULL,'ADD9',
'2013-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS010', 'NAM10',
9934567890,'ADD10', '2013-02-12', '21');
Insert into CUSTOMER_MASTER Values('CUS011', 'NAM11',
9875678910,'ADD11', '2013-02-12', '21');
select * from customer_master;

Insert into LIBRARY_CARD_MASTER Values('CR001', 'Silver', 200, 5);
Insert into LIBRARY_CARD_MASTER Values('CR002', 'Gold', 400, 9);
Insert into LIBRARY_CARD_MASTER Values('CR003', 'Platinum', 600, 8);
Insert into LIBRARY_CARD_MASTER Values('CR004', 'VISA', 800, 7);
Insert into LIBRARY_CARD_MASTER Values('CR005', 'CREDIT', 1200, 6);

Insert into MOVIES_MASTER Values('MV001', 'DIEHARD', 
'2012-05-13','ENGLISH', 4 , '2HRS', 'U/A','ACTION','DIR1','L1','L2',100);
Insert into MOVIES_MASTER Values('MV002', 'THE MATRIX', 
'2012-05-13','ENGLISH', 4 , '2HRS', 'A','ACTION','DIR2','L1','L2',100);
Insert into MOVIES_MASTER Values('MV003', 'INCEPTION', '2012-05-13','ENGLISH', 4 , '2HRS', 'U/A','ACTION','DIR3','L15','L2',100);
Insert into MOVIES_MASTER Values('MV004', 'DARK KNIGHT', '2012-05-13','ENGLISH', 4 , '2HRS', 'A','ACTION','DIR4','L15','L2',100);
Insert into MOVIES_MASTER Values('MV005', 'OFFICE S', '2012-05-13','ENGLISH', 4 , '2HRS', 'U/A','COMEDY','DIR5','L12','L24',100);
Insert into MOVIES_MASTER Values('MV006', 'SHAWN OF DEAD', '2012-05-13','ENGLISH', 4 , '2HRS', 'U/A','COMEDY','DIR6','L1','L25',100);
Insert into MOVIES_MASTER Values('MV007', 'YOUNG FRANKEN', '2012-05-13','ENGLISH', 4 , '2HRS', 'U/A','COMEDY','DIR7','L1','L2',100);
Insert into MOVIES_MASTER Values('MV008', 'CAS', '2012-05-13','ENGLISH', 4 , '2HRS', 'A','ROMANCE','DIR8','L1','L2',100);
Insert into MOVIES_MASTER Values('MV009', 'GWW', '2012-05-13','ENGLISH', 4 , '2HRS', 'A','ROMANCE','DIR9','L1','L2',100);
Insert into MOVIES_MASTER Values('MV010', 'TITANIC', '2012-05-13','ENGLISH', 4 , '2HRS', 'A','ROMANCE','DIR10','L1','L2',100);
Insert into MOVIES_MASTER Values('MV011', 'THE NOTE BOOK', '2012-05-13','ENGLISH', 4 , '2HRS', 'A','ROMANCE','DIR11','L1','L2',100);

Insert into CUSTOMER_CARD_DETAILS Values('CUS001', 'CR001', '2012-05-13');
Insert into CUSTOMER_CARD_DETAILS Values('CUS002', 'CR002', '2012-05-13');
Insert into CUSTOMER_CARD_DETAILS Values('CUS003', 'CR002', '2013-05-13');
Insert into CUSTOMER_CARD_DETAILS Values('CUS004', 'CR003', '2013-05-13');
Insert into CUSTOMER_CARD_DETAILS Values('CUS005', 'CR003', '2012-05-13');

Insert into CUSTOMER_ISSUE_DETAILS Values ('IS001', 'CUS001', 'MV001',
'2012-05-13', '2012-05-13','2012-05-13');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS002', 'CUS001', 'MV001',
'2012-05-01', '2012-05-16','2012-05-16');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS003', 'CUS002', 'MV004',
'2012-05-02', '2012-05-06','2012-05-16');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS004', 'CUS002', 'MV004',
'2012-04-03', '2012-04-16','2012-04-20');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS005', 'CUS002', 'MV009',
'2012-04-04', '2012-04-16','2012-04-20');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS006', 'CUS003', 'MV002',
'2012-03-30', '2012-04-15','2012-04-20');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS007', 'CUS003', 'MV003',
'2012-04-20', '2012-05-05','2012-05-05');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS008', 'CUS003', 'MV005',
'2012-04-21', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS009', 'CUS003', 'MV001',
'2012-04-22', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS010', 'CUS003', 'MV009',
'2012-04-22', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS011', 'CUS003', 'MV010',
'2012-04-23', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS012', 'CUS003', 'MV010',
'2012-04-24', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS013', 'CUS003', 'MV008',
'2012-04-25', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS014', 'CUS004', 'MV007',
'2012-04-26', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS015', 'CUS004', 'MV006',
'2012-04-27', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS016', 'CUS004', 'MV006',
'2012-04-28', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS017', 'CUS004', 'MV001',
'2012-04-29', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS018', 'CUS010', 'MV008',
'2012-04-24', '2012-05-07','2012-05-25');
Insert into CUSTOMER_ISSUE_DETAILS Values ('IS019', 'CUS011', 'MV009',
'2012-04-27', '2012-05-07','2012-05-25');

desc movies_master;

SELECT 
    customer_name, a.customer_id
FROM
    customer_issue_details a,
    customer_master b
WHERE
    a.customer_id = b.customer_id
GROUP BY a.customer_id
HAVING COUNT(a.movie_id) = (SELECT 
        MIN(a.count) min
    FROM
        (SELECT 
            customer_id, COUNT(movie_id) count
        FROM
            customer_issue_details
        GROUP BY customer_id) a)
    OR COUNT(a.movie_id) = (SELECT 
        MAX(b.count) min
    FROM
        (SELECT 
            customer_id, COUNT(movie_id) count
        FROM
            customer_issue_details
        GROUP BY customer_id) b);
        
        select a.customer_id,a.customer_name,coalesce
(a.contact_no,a.contact_add) contact,description
from customer_master 
a,library_card_master b,customer_card_details c
where 
a.customer_id=c.customer_id and c.card_id=b.card_id   union
select 
a.customer_id,a.customer_name,coalesce(a.contact_no,a.contact_add)   
contact,null as description
from customer_master a
where customer_id not 
in (select customer_id from customer_card_details) ;

select   m.customer_id,customer_name,movie_id,count(i.movie_id) as 
count_of_movie
from customer_master m join customer_issue_details i
on m.customer_id = i.customer_id
group by movie_id
having count(movie_id)>1;

select a.customer_id,customer_name
from customer_card_details 
a,customer_master b,library_card_master c
where 
a.customer_id=b.customer_id and a.card_id=c.card_id;

select distinct b.customer_id,customer_name 
from 
customer_issue_details a,customer_master b
where 
a.customer_id=b.customer_id 
and a.customer_id not in (select 
customer_id from customer_card_details);

select substring(issue_id,4) sr_no,issue_id as 
video_id,customer_id,movie_id 
from customer_issue_details order by 
sr_no;

select   a.customer_id,count(a.movie_id)*c.rent_cost rent 
from 
customer_issue_details a,customer_master b ,(select 
movie_id,rent_cost 
from movies_master) c
where a.customer_id=b.customer_id and 
a.movie_id=c.movie_id
 group by   b.customer_id union
select customer_id,0 
as rent 
from customer_master
where customer_id not in(select 
customer_id from customer_issue_details);
