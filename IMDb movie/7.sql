-- How many movies fall under each certificate category (e.g., PG, R, etc.)?

select * from imdb_m;

select certificate,
count(Series_Title) as movies_count
from imdb_m
group by Certificate;