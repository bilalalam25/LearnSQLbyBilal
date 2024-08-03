-- Top Rated Movies

SELECT 
    Series_Title, IMDB_Rating AS Top_Rated
FROM
    imdb_m
ORDER BY Top_Rated DESC
LIMIT 10;