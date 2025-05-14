select movie_name,year,director,count(*)
from movies
group by movie_name,year,director
having count(*)>1;

select movie_name,rating,votes
from movies
order by Rating desc
limit 5;

select movie_name,rating,votes
from movies
where year = 2023
order by Rating desc;

select movie_name,rating,votes
from movies
where Rating >7 and Votes > 100000
order by Rating desc;

select avg(meta_score) as average_meta_score
from movies
where year =2023;

select pg_rating,count(*) as movie_count 
from movies
group by pg_rating;

select movie_name,rating,year
from movies
where Director = 'christopher nolan';

select movie_name,Duration,rating
from movies
order by Duration desc;

select genre,count(*) as movie_count
from movies
group by Genre
order by movie_count desc;

select movie_name, cast,year
from movies
where cast like '%leonardo dicaprio%';
select sum(votes) as total_votes
from movies
where year = 2023;

select movie_name,year,rating
from movies
where year between 2000 and 2023
order by year desc;

select movie_name,Genre,rating
from movies
where Genre like '%biography%'
order by Rating desc;

select movie_name,rating,votes
from movies
order by votes desc
limit 5;

select movie_name,rating,year
from movies
order by year asc
limit 1;

select Director,count(*) as movie_count 
from movies
group by Director
order by movie_count desc;

select movie_name,rating,Duration
from movies
where duration > '2h 00m'
order by duration desc;

select count(*) as R_rated_movie
from movies
where PG_Rating ='r';

select Movie_Name,Director
from movies
where Director like '%,%'
order by movie_name desc;

select movie_name,rating,PG_Rating
from movies
where PG_Rating in('pg','pg-13')
order by rating desc;

select year ,count(*) as movie_count 
from movies
group by year
order by year asc;

select avg(rating) as avg_rating
from movies;

select Movie_Name,Duration
from movies
order by Duration desc
limit 1 ;

select Movie_Name,Duration
from movies
order by Duration asc
limit 1 ;

select Movie_Name,year,Rating
from movies
where year <2000
order by Duration desc;

select Movie_Name,Genre,Rating
from movies
where Genre like '%action%', and genre like '%%'
order by Rating desc;