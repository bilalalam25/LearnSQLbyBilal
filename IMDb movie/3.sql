-- Which genre has the highest average IMDb rating?

SELECT 
    Genre, ROUND(AVG(IMDB_Rating), 1) AS Top_Rated
FROM
    imdb_m
GROUP BY Genre
ORDER BY Top_Rated DESC
LIMIT 10;