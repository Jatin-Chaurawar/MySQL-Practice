create database mycompany;
use mycompany;
select * from employee;
select * from project;
select * from client;
select * from employee where empid = 'E01';
select * from  employee where department = 'sales' and salary > 20000;
select * from  employee where department = 'sales' or department ='marketing';
select * from  employee where exp between 2 and 5;
select * from  employee where fname like 'a%';
select * from  employee where fname like '%i';
select * from  employee where fname like '%a%' or lname like '%a%';
select * from  employee where department in('sales','marketing');
select * from  employee where projectname is null;
select * from  employee where salary >=60000;
select e.empid,e.fname,e.lname,p.projectname
from employee e inner join project p on e.empid=p.empid;
select e.empid,e.fname,e.lname,c.clientname
from employee e inner join client c on e.empid=c.empid;
select e.empid,e.fname,e.lname,p.projectname
from employee e left join project p on e.empid=p.empid;
select e.empid,e.fname,e.lname,c.clientname
from employee e left join client c on e.empid=c.empid;

select e.empid,e.fname,e.lname,c.clientname
from employee e right join client c on e.empid=c.empid;

select e.empid,e.fname,e.lname,p.projectname
from employee e right join project p on e.empid=p.empid;

select * from employee e left join project p on e.empid= p.empid
union 
select * from employee e right join project p on e.empid = p.empid;

select e1.empid as empid1 ,e1.fname as fname1,e1.lname as lname1 ,
e2.empid as empid2 ,e2.fname as fname2,e2.lname as lname2 ,
e1.projectname 
from employee e1
join employee e2 on e1.projectname = e2.projectname
where e1.empid < e2.empid;

select c.clientid ,c.clientname,e.empid ,e.fname as employee_name
from client c cross join employee e;

select e.empid ,e.fname as employee_name, p.projectid,p.projectname
from employee e cross join project p;

select c.clientid ,c.clientname,e.empid,e.fname as employeename ,p.projectid,p.projectname
from client c 
cross join employee e
cross join project p;

select * from employee
join project on employee.empid = project.empid
join client on project.empid = client.empid;


select e.empid as employee ,e.fname as employee_fname ,e.lname as employee_lname,e.department, p.projectid,p.projectname,
p.type as project_type, p.location as project_location,c.clientid ,c.clientname, c.joinedon as client_joinedon
from employee e
left join project p on e.empid = p.empid
left join client c on e.empid = c.empid;