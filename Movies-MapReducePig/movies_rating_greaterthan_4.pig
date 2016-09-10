-- List the movies that having a rating greater than 4 
movies = LOAD '/user/mryap/movies_data.csv' USING PigStorage(',') as (id,name,year,rating,duration);
movies_greater_than_four = FILTER movies BY (float)rating>4.0;
DUMP movies_greater_than_four;
store movies_greater_than_four into '/user/mryap/movies_greater_than_four';