use computersales;
select * from sales;
select saleid, count(*) from sales group by saleid having count(*)>1;
select contact, count(*) from sales group by contact having count(*)>1;
select sum(saleprice) as totalsalesamount, sum(profit) as totalprofit from sales;
select producttype, avg(saleprice) as avgsaleprice from sales group by producttype;
select state,count(*) totalsales from sales group by state;
select max(saleprice) as maxsaleprice, min(saleprice) as minsaleprice from sales;
select saleyear, sum(saleprice) as totalsalesamount from sales group by saleyear;
select producttype ,salemonth ,count(*) as totalsales from sales group by producttype,salemonth;
select case 
when age between 18 and 30 then '18-30'
when age between 31 and 45 then '31-45'
when age between 46 and 600 then '46-60'
else 'above 60' 
end as agegroup, count(*) as totalsales from sales group by agegroup;


select saleyear,salemonth,count(*) as totalsales from sales group by saleyear, salemonth
order by saleyear, month(case salemonth
				when 'january'then '01'
                when 'february'then '02'
                when 'march'then '03'
                when 'april'then '04'
                when 'may'then '05'
                when 'june'then '06'
                when 'july'then '07'
                when 'august'then '08'
                when 'september'then '09'
                when 'october 'then '10'
                when 'november'then '11'
                when 'december'then '12'
                end);


select 
gender as gender,
count(*) as totalsales,
avg(saleprice) as avgsaleprice,
min(saleprice) AS minsaleprice,
max(saleprice) AS maxSALEPrice
from sales 
group by gender;

select contact, sum(saleprice) as totalsales,sum(profit) as totalprofit from sales group by contact;

select * from sales order by profit desc
limit 5;
select * from sales order by profit asc
limit 5;

select * from sales order by profit desc
limit 1 offset 1;

select * from sales 
where profit = (select distinct profit from sales order by profit desc limit 1 offset 1);

select * from sales order by profit desc
limit 1 offset 2;