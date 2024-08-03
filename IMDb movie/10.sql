-- Is there a correlation between the number of votes and the IMDb rating? 

SELECT 
    round((n * sum_xy - sum_x * sum_y) / 
    SQRT((n * sum_x2 - sum_x * sum_x) * (n * sum_y2 - sum_y * sum_y)),4) AS corr
from
(SELECT 
    COUNT(*) AS n,
    SUM(No_of_Votes * imdb_rating) AS sum_xy,
    SUM(No_of_Votes) AS sum_x,
    SUM(imdb_rating) AS sum_y,
    SUM(No_of_Votes * No_of_Votes) AS sum_x2,
    SUM(imdb_rating * imdb_rating) AS sum_y2
FROM imdb_m ) as a;