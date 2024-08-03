-- Which director has the most movies in the dataset?

SELECT 
    Director, COUNT(Director) AS movie_count
FROM
    imdb_m
GROUP BY Director
ORDER BY movie_count DESC
LIMIT 1;