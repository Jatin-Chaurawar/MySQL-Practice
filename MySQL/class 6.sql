use mydata;
select * from student;
select * from student where pythonmarks is null;
select * from student where dsmarks is null;
select * from student where damarks is null;
select * from student where pythonmarks is null or damarks is null or dsmarks is null;
select * from student where pythonmarks is null and gender = 'male';
select * from student where pythonmarks is null and gender = 'female';
select * from student where pythonmarks is not null;
select * from student where damarks is not null;
select * from student where dsmarks is not null;
select count(*) from student where pythonmarks is null;
select count(*) from student where pythonmarks is null or damarks is null or dsmarks is null;
select name,count(*) from student group by name having count(*)>1;
select gender,count(*) from student group by gender having count(*)>1;
select sum(pythonmarks) as total_python_marks from student;
select sum(dsmarks) as total_ds_marks from student;
select sum(damarks) as total_da_marks from student;
select sum(pythonmarks) as total_python_marks,sum(dsmarks) as total_ds_marks,sum(damarks) as total_da_marks  from student;
select gender,sum(pythonmarks) as total_python_marks  from student group by gender;
select name,studentid,sum(pythonmarks + dsmarks + damarks) as total_marks from student group by name,studentid;
select name,studentid,coalesce(sum(coalesce(pythonmarks,0) + coalesce(dsmarks,0) + coalesce(damarks,0)),0) as total_marks 
from student group by name,studentid;
select avg(pythonmarks) as mean_python_marks from student;
select avg(dsmarks) as mean_ds_marks from student;
select avg(pythonmarks) as mean_python_marks from student;

select min(pythonmarks) as min_python_marks from student;
select max(pythonmarks) as max_python_marks from student;
select min(pythonmarks) as min_python_marks,max(pythonmarks) as max_pyhon_marks from student;
select min(least(pythonmarks,dsmarks,damarks)) as min_0f_all_marks,max(least(pythonmarks,dsmarks,damarks)) as max_of_all_marks from student;

alter table student
add column totalmarks int,
add column result varchar(10);
set sql_safe_updates=0;
update student set totalmarks = coalesce(pythonmarks,0) + coalesce(damarks,0) + coalesce(dsmarks,0)
where totalmarks is null; 
update student set result = case when totalmarks >= 200 then 'pass' else 'fail' end;