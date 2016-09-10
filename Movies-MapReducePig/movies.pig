movies = LOAD '/user/mryap/movies_data.csv' USING PigStorage(',') as (id,name,year,rating,duration);
DUMP movies;

----------------------------------------------------------------------------------------------------
List the movies that having a rating greater than 4 
movies_greater_than_four = FILTER movies BY (float)rating>4.0;
DUMP movies_greater_than_four;

----------------------------------------------------------------------------------------------------
-- List the movies that were released between 2004 and 2015

movies = LOAD '/user/mryap/movies_data.csv' USING PigStorage(',') as (id,name,year,rating,duration);
movies_between_2004_2015 = FILTER movies BY year > 2004 and year < 2015; 


----------------------------------------------------------------------------------------------------
-- List the movies that were released between 2004 and 2015
movies = LOAD '/user/mryap/movies_data.csv' USING PigStorage(',') as (id,name,year,rating,duration);
movies_between_2004_2015 = FILTER movies BY year > 2004 and year < 2015; 

DUMP movies_between_2004_2015;