
use ds_batch

create table customers(cid int primary key,
cname varchar(40),
address varchar(30));

desc customers;

create table orders(oid int,
oname varchar(20),
price decimal,
cust_id int,foreign key(cust_id)
references customers(cid),primary key(oid));

describe orders

select * from customers;
select * from orders
insert into customers values
(101,'sarthak','pune'),
(102,'rohit','kharadi'),
(103,'ritesh','pimpri'),
(104,'sanika','hinjavdi'),
(105,'tanvi','hadapsar'),
(106,'shrikant','aurangabad'),
(107,'gaurav','baner');

insert into orders values
(1,'phone','1200',101),
(2,'mouce','3000',102),
(3,'mobile_cover','100',103),
(4,'adapter','150',104),
(5,'AC','12000',105),
(6,'fan','1500',106),
(7,'laptop','120000',107);

select * from orders;
select * from customers;

-- to find oid from orders table--
select oid from orders;

-- to find all duplicate city from customer table --
select address from customers;

-- WHERE Clause it acts like filter--

-- to find all the details from customer table address is pune --
select * from customers where address='baner';

-- to find all the details from order table price less than 1000 --
select * from orders where price<1000;

select * from orders;

-- to find all the details from order table price greater than 3500 --
select * from orders where price>3500;

-- to find all the details from order table price range is 3.5k to 50k --
select * from orders where price between 3000 and 50000;

-- to find all the details from order table price must be greater than 2k 
-- & category must be books ---
select * from orders where price>2000 and oname='books';

-- to find all the details from order table category may be shoes,watches,others--
select * from orders where oname in('shoes','watches','others');

-- to find all the details from order table except price 23500,3500---
select * from orders where price not in(23500,3500);

-- WILDCARD CHARACTERS ( Patten match like operator, %)---

-- to find all the details from customeer table adress must start with p

SELECT  * FROM customers where address like 'p%';

-- to find all the details from customer table address must be chennai and name start with savepoint

SELECT * FROM customers where address='pune' and cname like 's%';

-- to find  the  details from order table name length is 7
select * from orders where oname like '_______';

select * from customers;
select * from orders;

-- to sort the address column in ascending order--
select * from customers order by address;

-- to sort the order name in descending order from order table--
select * from orders order by oname desc;

-- to sort the order name in descending order & price in asc order from order table--
select * from orders order by oname desc,price asc;

-- to find all the details from order table sort data w.r.t price desc and amt>3500 ---
select * from orders where price>3500 order by price desc;

-- to find all the details from order table sort data w.r.t price desc ,name 
-- and name must contain e --
select * from orders where oname like '%e%' order by price desc,oname;

-- GROUP BY -----grouping of similar kind of data--

-- to find all the details from customer table w.r.t to address --
select address from customers group by address;

-- HAVING is used to apply filter with group by --

-- to find all the details from customer table w.r.t to address and address must be pune --
select address from customers group by address having address='pune';

-- to find all the details from customer table w.r.t to address sort address in desc order --
select address from customers group by address order by address desc;