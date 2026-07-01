-- constraints in sql --

describe customers ;

-- unique : duplicates values are not aalowed--
-- primary key : duplicates and null values are not allowed--
-- not null : null values are not allowed --
-- check :it require the value of database are corrct based on condition--
-- fk: it is foregin key when a table pk goes into another table it act like fk--
-- default : when no values is inserted in column then it take default value as you taken--
-- auto_increment : it genretes num number automaticlly when new records is inserted--

create table professor 
(pid int primary key ,
pname varchar(80) not null
);

insert into professor values (101,'abs')

create table student(
sid int primary key  auto_increment ,
sname varchar(87) not null ,
email varchar(80) ,
contact int not null constraint cno check(contact = 10),
address varchar (80) default "pune",
age int constraint chk_age  check (age>=18),
constraint chk_em unique (email) );


-- TCL COMMANDS -- 11 MAY
-- TO WORK WITH TCL COMMEND--
select @@autocommit; -- they will be back autocommit will be enable or not our autocommit is already set on 1 or disable 0

set autocommit = 0;

-- create tabble book_master--
 create table book_master (
 bkid int primary key,
 bkname varchar(90),
 price float);
 
 -- insert the records in book table--
 start transaction ;
 insert into book_master values (101,'wings of fire',300);
 
 select * from book_master;
 
  start transaction ;
 insert into book_master values (102,'2 states',404.4);
 commit;

-- rollback-- 
delete from book_master where bkid=102;
rollback;

-- TCL command--
select * from employee;

update  employee set salary = salary + 1000 where empid = 4;
savepoint step1;
commit;
update employee set salary = salary +2000 where empid = 2;
 
 
 select * from employee;
 
rollback;