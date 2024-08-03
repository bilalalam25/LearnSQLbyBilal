-- Which director has the highest average IMDb rating?

SELECT 
    director, AVG(imdb_rating) AS avg_rating
FROM
    imdb_m
GROUP BY director
ORDER BY avg_rating DESC
LIMIT 1;