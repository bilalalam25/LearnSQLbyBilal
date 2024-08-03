-- How many movies were released each year?

SELECT 
    Released_Year,
    GROUP_CONCAT(Series_Title
        SEPARATOR '/ ') AS movies,
    COUNT(Series_Title) AS movie_count
FROM
    imdb_m
GROUP BY Released_Year
ORDER BY Released_Year DESC;