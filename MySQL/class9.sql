create database songs;
use songs;
select * from songs;

select popularity  from songs limit 10;

select distinct artist from songs;

select loudness from songs where loudness >-5;

select song,count(song) as song_name from songs group by song ;

select song,year,popularity,genre  from songs where genre='hip hop';

select song,popularity
 case
	when popularity < 30 then 'not likely'
	when popularity between 30 and 60 then 'good'
	else  'best'
end as popularity_group
from songs;

select song,energy,tempo from songs where tempo >150 and energy > 0.5;

select song,year,popularity from songs where popularity > 75 and year<2000;