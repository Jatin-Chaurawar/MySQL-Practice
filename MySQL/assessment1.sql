--assessment 1

--Q1
select firstname,lastname from customer order by firstname,lastname;

--Q3
select * from employees where department ='hr'; 
--Q3
select employeename from employees order by hiredate asc;

--Q4 
select sum(salary) as total_salary from employeees;

--Q5
Select count(year) as count_year from employees group by hiredate;
Select count(year) as count_year from employees group by joindate desc;

--Q6
select empid,salary from salary order by employeename desc;
select empname,empid,salary from salary,employess order by employeename desc;

--Q7 
select count(salary) as Count_salary  from employess where count_salary > max('marketing')department;
select max(salary) from  employees where department = 'hr';

--Q8
select * from employees where (salary/5)*100 from department ='finance';

--Q9
delete empname from employees where salary< 40000;

--Q10
select departmentname from department where departmentname = unique;
select departmentname from department where departmentname = 'distinct'

--Q11
select empid,empname,salary from employees where department ='engineeering' and salary<50000;

--Q12
select count(performancescore) from employees 
case( where performancescore>2000 ='outstanding'
	  where performancescore>1500 ='satisfactory'
      where performancescore>1000 ='need improvement' 
      end);