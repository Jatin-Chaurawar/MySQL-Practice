create database mylearning;
use mylearning;
create table student(id int, name varchar(50), mobile bigint,emailid varchar(50));
create index idx_student_id on student(id);
show databases;
show tables;
show status;
drop index idx_student_id on student;
drop table student;
drop database mylearning;
create table customer(customerid int primary key, customername varchar(50),lastname varchar(50),country varchar(50), age int(2), phone int(10));
insert into customer
values(1,'rashmi','joshi','india','38','9511761157'),
(2,'nayana','padmawar','australia','23','9898985465'),
(3,'kuljeet','kaur','japan','23','9090876890'),
(4,'gurpreet','gill','austria','21','8998341756'),
(5,'akansha','tayade','spain','22','9890987654');
select * from customer;
alter table customer modify column phone bigint;
alter table customer modify column  customerid int primary key;
truncate table customer;
INSERT into customer
values (6,'arya', 'mehra','malaysia','23','989867654');
create table customer_data as  select * from customer;
drop table customer_data;
create table customer_basics as select customerid, customername,phone from customer;
show tables;
set sql_safe_updates=0;
delete from customer where customername = 'arya';
select * from customer;
delete from customer_data;
select * from customer_data;
truncate table customer_basics;
select * from customer_basics;
create table customer_copy as  select * from customer;
create table customer_as as select customerid, customername,phone from customer;
show tables;
drop table customer_basics;
alter table customer_data add address varchar(100);
rename table customer_as to customer_as_new;
select age,count(*) as num_customers
from customer 
group by age having count(*) > 1;

select age,count(*) as num_customers
from customer 
group by age;

select * from customer 
order by customerid 
limit 3;

select * from customer where age =21;
select customerid customername from customer where age >30;
select customerid customername from customer where age <>30;
select * from customer where age between 22 and 30;
select * from customer where customername like'n%';

