create database hrdata ;
use hrdata;
select * from employees;

-- Total Employees
select count(*) as TotalEmployees from employees;

-- Total Old Employees
select count(*) AS Total_Old_Employees from employees 
where Dateoftermination!='';

-- Total Current Employees
select count(*) AS Total_Old_Employees from employees 
where Dateoftermination='';

-- Average Salary 
select avg(salary) as Avg_Salary  from employees;

-- Average Age
Select avg(timestampdiff(year,str_to_date(DOB,'%d-%m-%Y'),Curdate())) as Avg_Age from employees;

-- Average Year in Company
Select avg(timestampdiff(year,str_to_date(dateofhire,'%d-%m-%Y'),Curdate())) as Avg_Year_in_Company from employees;

-- Adding NEw Column For Employees Current Status
alter table employees
add EmployeeCurrentStatus int;

-- Updating Values for New Column 
set SQL_SAFE_UPDATES=0;
UPDATE employees
set employeecurrentstatus= case
when dateoftermination ='' then 1
else 0
end;

-- Calculate Attrition Rate
Select (cast(count(case when employeecurrentstatus=0 then 1 end) as float)/count(*))*100 as Attrition_Rate from employees;

-- Get column Names and Data Type
describe employees;

-- Print first 5 employees
select * from employees limit 5;

-- Print last 5 employees
select * from employees order by empid desc limit 5;

-- Changing data Type of Salary
alter table employees 
modify column salary decimal(10,2);

-- Convert all date columns in proper dates
update employees 
set dob=str_to_date(dob,'%d-%m-%Y');

update employees 
set DateofHire=str_to_date(dateofhire,'%d-%m-%Y');

update employees 
set lastperformancereview_date=str_to_date(lastperformancereview_date,'%d-%m-%Y');

-- alter Table
alter table employees
modify column DOB date ,
Modify column dateofhire date,
modify column lastperformancereview_date date;

-- Read Column To check changes
describe employees;

-- Fill Empty Values In Date of Terminatrion
update employees 
set dateoftermination='Currently Working'
where  dateoftermination is null or dateoftermination='';

-- count each unique value in martialdesc
select maritaldesc ,count(*) as count from employees group by Maritaldesc order by count desc;

-- 
select department ,count(*) as count from employees group by department order by count desc;

-- 
select position ,count(*) as count from employees group by position order by count desc;

-- 
select managername ,count(*) as count from employees group by Managername order by count desc;