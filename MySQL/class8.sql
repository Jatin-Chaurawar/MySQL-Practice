create database mybank;
use mybank;
select distinct amount 
from loans l1
where 5= (select count(distinct amount )
			from loans l2
            where l2.amount>+l1.amount);
            
select customerid 
from accounts where status ='inactive';
select * from customers limit 1;
select now() as currentdatetime;

-- sql query to create a new dublicate table 
create table customersclone like customers;
insert into customersclone select * from customers;

-- sql query to calculate how many days are remaining for customer to pay off the loans
select customerid ,
datediff(enddate,curdate()) as daysremaining
from loans where enddate>curdate();

-- query to find latest transaction date for each amount
select accountnumber,max(transactiondate) as latestesttransactiondate
from transactions group by accountnumber; 

select avg(age) as averageage from customers;

-- find account with less than minimum amount for each accountsopen before 1st jan 2022
select accountnumber,balance
from accounts where balance < 25000 and opendate<='2022-01-01';

select * from loans where enddate >= curdate() and status ='active';

-- find the total transction for each ammount for a specific mounth
select accountnumber,sum(amount) as totalamount from transactions 
where month(transactiondate) =6
and year(transactiondate)= 2023
group by accountnumber;

-- find avg crditcard balance for each customers
select customerid,avg(balance) as averagecreditcardbalance from creditcards group by customerid; 

-- inactive atms per location
select location,count(*) as numberofactiveatms
from atms where status = 'out of service' group by location; 

-- categorize customers into three goups 
select name,age,
case
	when age < 30 then 'below 30'
    when age between 30 and 60 then '30 to 60'
    else 'above 60'
end as age_group from customers;

