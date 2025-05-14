create database mysqlproject;
use mysqlproject;
create table employees (
	employeeid int primary key,
    firstname varchar(50),
    lastname varchar(50),
    departmentid int ,
    joindate date,
    salary decimal(10,2)
);

create table departments (
	departmentid int primary key,
    departmentname varchar(100)
);

create table orders (
	orderid int primary key,
    employeeid int,
    orderdate date,
    totalamount decimal(10,2),
    foreign key(employeeid) references employees(employeeid)
);

create table products (
	productid int primary key,
    productname varchar(100),
    category varchar(50),
    price decimal(10,2)
);

create table customers (
	customerid int primary key,
    customername varchar(100),
    contactname varchar(50),
    country varchar(50)
);
INSERT INTO Employees
VALUES   
(1, 'Harshal', 'Nikhade', 1, '2020-01-15', 50000.00),    
(2, 'Minal', 'Lanjhewar', 2, '2019-03-20', 60000.00),    
(3, 'Khushi', 'Misar', 1, '2021-05-10', 55000.00),    
(4, 'Nishar', 'Meshram', 3, '2018-11-01', 80000.00),    
(5, 'Pallavi', 'Chaudhari', 2, '2019-03-24', 60000.00),    
(6, 'Shubham', 'Gour', 1, '2021-05-10', 55000.00),    
(7, 'Naman', 'Taori', 3, '2018-12-01', 90000.00),    
(8, 'Harshal', 'Gajbhiye', 2, '2019-04-20', 60000.00),    
(9, 'Vivek', 'Nimbholkar', 1, '2021-05-10', 55000.00),    
(10, 'Roshan', 'Vaidya', 3, '2018-12-15', 75000.00),    
(11, 'Shraddha', 'Kamble', 2, '2019-03-26', 60000.00),   
(12, 'Nikhilesh', 'Patil', 1, '2021-07-10', 55000.00),   
(13, 'Nikhil', 'Ingole', 3, '2018-11-28', 75000.00),   
(14, 'Jatin', 'Chaurawar', 2, '2019-08-20', 66000.00),   
(15, 'Neha', 'Baghele ', 1, '2021-05-10', 55000.00);

INSERT INTO Departments 
VALUES    
(1, 'Sales'),    
(2, 'Marketing'),    
(3, 'Finance');

INSERT INTO Orders
VALUES    
(1, 1, '2023-06-10', 1500.00),    
(2, 2, '2023-06-11', 2500.00),    
(3, 3, '2023-06-12', 1800.00),    
(4, 4, '2023-06-13', 1200.00),    
(5, 5, '2023-06-14', 2000.00),    
(6, 6, '2023-06-10', 1500.00),    
(7, 7, '2023-06-11', 2500.00),    
(8, 1, '2023-06-12', 1800.00),    
(9, 2, '2023-06-13', 1200.00),    
(10, 3, '2023-06-14', 2000.00);

INSERT INTO Products
VALUES    
(1, 'Laptop', 'Electronics', 1200.00),    
(2, 'Smartphone', 'Electronics', 800.00),    
(3, 'Printer', 'Electronics', 300.00),    
(4, 'Desk', 'Furniture', 400.00),   
(5, 'Chair', 'Furniture', 100.00);

INSERT INTO Customers
VALUES    
(1, 'ABC Company', 'Riyaz Mustafa', 'USA'),    
(2, 'XYZ Corporation', 'Kavita Kapoor', 'Canada'),    
(3, 'PQR Ltd', 'Milind Narethe', 'UK'),    
(4, 'MNO Enterprises', 'Prakash Katolli', 'Australia');

select * from departments;
select * from employees;
select * from orders;
select * from products;
select * from  customers;


select e.employeeid,e.firstname,e.lastname,d.departmentname from employees e
join departments d on e.departmentid = d.departmentid;

select distinct departmentname from departments;
select * from  employees where salary > 55000;

select * from  orders where orderdate > '2023-06-10';

select * from employees order by lastname asc;

select * from products order by price desc;

-- emplyees by departmentid and count the number of employees in each department
select departmentid,count(*) as employeecount
from employees group by departmentid;

-- group order by empid amd  calculate the total amount of order
select employeeid,sum(totalamount) as totalorderamount
from orders group by employeeid;

-- calculate the total number of orders 
select count(*) as totalorders from orders;

-- average salary of emp in each dept
select departmentid,avg(salary) as avgsalary from employees group by departmentid;

select departmentid,avg(salary) as avgsalary from employees group by departmentid having avg(salary)>55000;


