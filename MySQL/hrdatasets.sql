create database hrdata;
use hrdata;
select * from employees;
select count(*) as total_employees
from employees;
select count(*) as total_0ld_employees
from employees
where dateoftermination!='';

select count(*) as total_current_employees
from employees
where dateoftermination='';

select avg(salary) as avgsalary
from employees;

select avg(timestampdiff(year,str_to_date(dob,'%d-%m-%Y'),curdate()))
as avg_age 
from employees;

select avg(timestampdiff(year,str_to_date(dateofhire,'%d-%m-%Y'),curdate()))
as avg_years_in_company
from employees;

alter table employees
add employeescurrentstatus int;

set sql_safe_updates=0;
update employees
set employeescurrentstatus=case
	when dateoftermination=''then 1
    else 0
end;

select
	(cast(count(case when employeescurrentstatus = 0 then 1 end) as float) / count(*)) * 100 as attrition_rate 
    from employees;
    
describe employees;
select *
from employees
limit 5; 

select *
from employees
order by empid desc
limit 5; 

alter table employees
modify column salary decimal(10,2);

update employees
set dob= str_to_date(dob,'%d-%m-%Y');
update employees
set dateofhire= str_to_date(dateofhire,'%d-%m-%Y');
update employees
set lastperformancereview_date = str_to_date(lastperformancereview_date,'%d-%m-%Y');

alter table employees
 modify  column dob date,
 modify  column dateofhire date,
 modify  column lastperformancereview_date date;
 describe employees;
 
 update employees
 set dateoftermination = 'currently working'
 where dateoftermination is null or dateoftermination ='';
 
 select maritaldesc,count(*) count
 from employees 
 group by maritaldesc
 order by count desc;
 
  select department,count(*) count
 from employees 
 group by department
 order by count desc;
 
  select position,count(*) count
 from employees 
 group by position
 order by count desc;
 
  select managername,count(*) count
 from employees 
 group by managername
 order by count desc; 
 
 select
 case
 when salary < 30000 then '<30K' 
 when salary between 30000 and 49999 then '30k - 40k'
 when salary between 50000 and 69999 then '50k - 69k'
 when salary between 70000 and 89999 then '70k - 89k'
 when salary >=90000 then '90K and above' 
 end as salary_range,
 count(*) as frequency 
 from employees group by salary_range order by salary_range; 
 
 select
 PerformanceScore,
 count(*) as count
 from employees
 group by PerformanceScore
 order by PerformanceScore;
 
 select 
	department,
	avg(salary) as averagesalary
 from employees
 group by department
 order by department;
 
 select 
	termreason,
    count(*) as count 
from employees 
where TermReason is not null
group by TermReason
order by TermReason;


select 
	state,
    count(*) as count 
from employees 
group by state
order by state;

select 
	sex,
    count(*) as count 
from employees 
group by sex
order by sex;

alter table employees
add column age int;


update employees
set age = timestampdiff(Year,dob,curdate());
select
 case
 when age < 20 then '<20K' 
 when age between 20 and 29 then '20 - 29'
 when age between 30 and 39 then '30-39'
 when age between 40 and 49 then '40-49'
  when age between 50 and 59 then '50-59'
 when age >=60 then '60 and above' 
 end as age_range,
 count(*) as frequency 
 from employees group by age_range order by age_range;
 
 select 
	department,
	sum(absences) as totalabsences
from employees
group by Department
order by Department;

select 
	sex,
    sum(salary) as totalsalary
from employees 
group by sex
order by totalsalary desc;

select 
	MaritalDesc,
    count(*) as terminatedcount
from employees 
where Termd
group by MaritalDesc
order by terminatedcount desc;


 select
 PerformanceScore,
 avg(absences) as averageabsences
 from employees
 group by PerformanceScore
 order by PerformanceScore;
 
  select
 RecruitmentSource,
 count(*) as employeecount
 from employees
 group by RecruitmentSource
 order by RecruitmentSource;
