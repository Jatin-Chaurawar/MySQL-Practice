create database MySqlProject;
use mysqlproject;
create table employees(
EmployeeId int primary key,
FirstName varchar(50),
LastName varchar(50),
DepartmentId int,
JoinDate date,
Salary decimal(10,2)
);
create table Department(
DepartmentId int primary key,
DepartmentName varchar(100)
);
create table orders(
orderId int primary key,
EmployeeID int,
OrderDate date,
TotalAmount Decimal(10,2),
foreign key (EmployeeId) references employees(employeeid)
);
create table Products(
productid int primary key,
productname varchar(100),
category varchar(50),
price decimal(10,2)
);
create table Customers(
customerid int primary key,
customername varchar(100),
contactname varchar(50),
country varchar (50)
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
(11, 'Disha', 'Kamble', 2, '2019-03-26', 60000.00),   
(12, 'Pravina', 'Dighore', 1, '2021-07-10', 55000.00),   
(13, 'Gunjan', 'Saxena', 3, '2018-11-28', 75000.00),   
(14, 'Achal', 'Wankhede', 2, '2019-08-20', 66000.00),   
(15, 'Aditi','Misra', 1, '2021-05-10', 55000.00);
INSERT INTO Department
VALUES    
(1, 'Sales'),    
(2, 'Marketing'),  
(3,'Finance');  
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
(10,3, '2023-06-14', 2000.00);  
INSERT INTO Products
VALUES    
(1, 'Laptop', 'Electronics', 1200.00),    
(2, 'Smartphone', 'Electronics', 800.00),    
(3, 'Printer', 'Electronics', 300.00),    
(4, 'Desk', 'Furniture', 400.00),   
(5,'chair','furniture',100.00);
INSERT INTO Customers
VALUES    
(1, 'ABC Company', 'Riyaz Mustafa', 'USA'),    
(2, 'XYZ Corporation', 'Kavita Kapoor', 'Canada'),    
(3, 'PQR Ltd', 'Milind Narethe', 'UK'),    
(4,'MNO Enterprises','Prakash Katolli','Australia');
select e.employeeid,e.firstname,e.lastname,d.departmentname from employees e
join department d on e.departmentid=d.departmentid;
select distinct departmentname from department;
select * from employees where salary>55000;
select * from orders where orderdate>'2023-06-10';
select * from employees order by lastname asc;
select * from products order by price desc;
select departmentid,count(*) as employeecount from employees 
group by departmentid;
select employeeid,sum(Totalamount) as Totalordersamount from orders group by employeeid;
select count(*) as Totalorders from orders;
select departmentid, avg(salary) as AvgSalary from employees group by departmentid;
select departmentid, avg(salary) as AvgSalary from employees group by departmentid having avg(salary)>55000;
select employeeid,count(*) as NumOrders from orders group by employeeid having count(*)>2;
insert INTO EMPLOYEES values (16,'Rupali','Sachdev',2,'2023-01-20',62000.00);
update employees set salary=68000.00 where employeeid=1;
set SQL_safe_UPDATES=0;
delete from employees where firstname='minal';
delete from orders where orderid=4;
select e.employeeid,e.firstname,e.lastname,d.departmentname from employees e
inner join department d on e.departmentid=d.departmentid;
select e.employeeid,e.firstname,e.lastname,o.orderid,o.orderdate,o.totalamount from employees e 
left join orders o on e.employeeid=o.employeeid;
select e.employeeid,e.firstname,e.lastname,o.orderid,o.orderdate,o.totalamount from employees e 
right join orders o on e.employeeid=o.employeeid;
select * from employees where salary=(select max(salary) from employees);
select * from employees where departmentid in (select departmentid from employees group by departmentid having count(*)>2);
select e.employeeid,e.firstname,e.lastname,
(select count(*) from orders o where o.employeeid=e.employeeid) as Numorders from employees e;
select employeeid from employees
union
select employeeid from orders;
select employeeid from employees
intersect
select employeeid from orders;
select employeeid from employees
except
select employeeid from orders;

create view EmployeeDetails AS
select e.employeeid,e.firstname,e.lastname,d.departmentname,e.joindate,e.salary from employees e 
join department d on e.departmentid=d.departmentid;
drop view if exists employeedetails;
create table NewEmployees (
EmployeeId int primary key,
FirstName varchar(50),
LastName varchar (50),
DepartmentId int);
alter table newemployees 
add column EmailAddress  varchar (100);
drop table Newemployees;
start transaction;
update employees set salary=salary+5000 where employeeid=1;
select * from employees;
rollback;
commit;
select * from employees;
select employeeid,firstname,lastname,salary, 
case
when salary>50000 and salary<80000 then 'New Joiness'
else 'Old Employees'
end as salaryCategory 
from employees;
select orderid,totalamount,
case
when totalamount>1000 then 'High Value'
WHEN totalamount>500 then 'Medium Value'
else 'Low Value'
end as OrderCategory from orders;
select e.employeeid,e.firstname,e.lastname,d.departmentname,
case 
when d.departmentid=1 then 'Sales'
when d.departmentid=2 then 'Marketing'
else 'other'
end as Departmentcategory from employees e
join department d on e.departmentid=d.departmentid;
select d.departmentname,sum(e.salary) as TotalSalaryExpense from employees e
inner join department d on e.departmentid=d.departmentid group by d.departmentname;
with DeptSalaryExpense as (
select d.departmentname,sum(e.salary) as TotalSalaryExpense from employees e
inner join department d on e.departmentid=d.departmentid group by d.departmentname)
select * from deptsalaryexpense;
create procedure CalculateTotalSalaryExpenses()
select d.departmentname,sum(e.salary) as TotalSalaryExpense from employees e
inner join department d on e.departmentid=d.departmentid group by d.departmentname;
call calculatetotalsalaryexpenses;
select e.employeeid,e.firstname,sum(o.totalamount) as TotalOrderAmount from employees e
left join orders o on e.employeeid=o.employeeid group by e.employeeid 
order by TotalorderAmount desc limit 3;
select e.employeeid,e.firstname,e.lastname,max(o.orderdate) as MostRecentOrderDate from employees e 
left join orders o on e.employeeid=o.employeeid group by e.employeeid;
select year(joindate) as joinyear,avg(salary) as AverageSalary from employees 
group by year(joindate) order by joinyear;
select d.departmentid,d.departmentname from department d 
left join employees e on d.departmentid=e.departmentid 
where e.employeeid is null;
select  employeeid,firstname,lastname,
row_number() over (order by salary desc) as RowNum from employees;
select  employeeid,firstname,lastname,
rank() over (partition by departmentid order by salary desc) as DepartmentRank 
from employees;
select  e.employeeid,e.firstname,e.lastname,d.departmentname,e.salary,
rank() over (partition by e.departmentid order by e.salary desc) as DepartmentSalaryRank 
from employees e
inner join department d on e.departmentid=d.departmentid;
select employeeid,firstname,lastname,
dense_rank() OVER (ORDER BY salary desc ) as HighestSalaryRank from employees;
select employeeid,salary,
lag(salary) over (order by joindate) as PrevSalary from employees;
select employeeid,salary,
lead(salary) over (order by joindate) as PrevSalary from employees;
select employeeid,firstname,lastname,joindate,
	year(joindate)as joinyear,
    month(joindate)as joinmonth,
    day(joindate)as joinday
from employees;
select employeeid,firstname,lastname,joindate,
	date_add(joindate,interval 1 year)as oneyrarlater,
    date_sub(joindate,interval 1 month)as onemonthearlier
    from employees;
select employeeid,firstname,lastname,joindate,
	date_format(joindate,'%d-%m-%Y') as formattedjoindate
from employees;
select * from employees where firstname="harshal";
select * from employees where joindate<'2020-01-01';
select firstname,salary from employees where salary > 60000;
select * from employees where departmentid = 1 order by joindate;
select * from employees where salary between 50000 and 70000;
select sum(salary) from employees where departmentid = 3 ;
select departmentid ,count(*) as numofemployees from employees group by departmentid;
select departmentid ,avg(salary) as numofemployees from employees group by departmentid;
select e1.employeeid,e1.firstname,e1.salary from employees e1
join employees e2 on e1.salary=e2.salary and e1.employeeid != e2.employeeid
order by e1.salary;