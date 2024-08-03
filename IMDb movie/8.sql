-- What is the average IMDb rating for each certificate category?

select round(avg(IMDB_Rating),1) as avg_rating,
certificate from imdb_m
group by  certificate order by avg_rating desc;