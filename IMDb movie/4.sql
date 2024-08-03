-- What is the distribution of movies across different genres?

CREATE TABLE MovieGenres (
    Movie_Title VARCHAR(255),
    Genre VARCHAR(255)
);
INSERT INTO MovieGenres (Movie_Title, Genre)
SELECT Series_Title, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(genre, ',', numbers.n), ',', -1)) AS Genre
FROM (SELECT '1' AS n UNION ALL SELECT '2' UNION ALL SELECT '3' UNION ALL SELECT '4' UNION ALL SELECT '5' UNION ALL SELECT '6' UNION ALL SELECT '7' UNION ALL SELECT '8' UNION ALL SELECT '9' UNION ALL SELECT '10') numbers
INNER JOIN imdb_m
ON CHAR_LENGTH(genre) - CHAR_LENGTH(REPLACE(genre, ',', '')) >= numbers.n - 1;

CREATE TABLE MovieGenresPivot AS
SELECT Movie_Title,
       MAX(CASE WHEN Genre = 'Drama' THEN '1' else '0' END) AS Drama,
       MAX(CASE WHEN Genre = 'Action' THEN '1' else '0' END) AS Action,
       MAX(CASE WHEN Genre = 'Sci-Fi' THEN '1' else '0' END) AS Sci_Fi,
       MAX(CASE WHEN Genre = 'Crime' THEN '1' else '0' END) AS Crime
FROM MovieGenres
GROUP BY Movie_Title;

select sum(Drama) as Drama_movies, sum(Action) as Action_movies,sum(Sci_Fi)as sci_fi_movies,sum(Crime)as Crome_movies from MovieGenresPivot;