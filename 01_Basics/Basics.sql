CREATE DATABASE DA ;   -- CREATE DATABASE 

USE DA ;               -- USE DATABASE 

-- CREATE TABLE 

create table student
(rno int,
stud_name varchar(40),
mks float
);

SHOW TABLES;     -- SHOW TABLES 

 DESC student;               -- DESCRIBE TABLE 

-- INSERT MULTIPLE RECORDS 

insert into student
values
(101,'abc',67),
(102,'pqr',34.5),
(103,'xyz',56.8),
(104,'lmn',56),
(105,'uvw',90);

-- DISPLAY ALL RECORDS 

SELECT * FROM STUDENT;

-- DISPLAY SPECIFIC COLUMNS

SELECT RNO,MKS FROM STUDENT;

-- RENAME TABLE & RENAME COLUMNS

RENAME TABLE STUDENT TO STUDENTS;
RENAME TABLE STUDENTS TO STUDENT;

alter table student rename column mks to marks;

-- drop is used to delete the table permanently from DB--
drop table student;

-- truncate--
truncate table student;

-- delete---
delete from student where rno=104;

-- ALTER TABLE table_name DROP COLUMN column_name--
alter table student drop column address;

-- UPDATE 

UPDATE student SET address = 'pune' WHERE marks>80;

CREATE DATABASE IF NOT EXISTS DA;   -- CREATE DATABASE IF NOT EXISTS

DROP DATABASE IF EXISTS DEMO;    -- DROP DATABASE IF EXISTS 

SHOW DATABASE();   -- SHOW CURRENT DATA BASE 



 
