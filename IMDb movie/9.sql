-- Which actor (star1, star2, star3, star4) appears in the most movies?

select actor, count(*) as appears_count
from
(select star1 as actor from imdb_m
union all
select star2 as actor from imdb_m
union all
select star3 as actor from imdb_m
union all
select star4 as actor from imdb_m) as a
group by actor
order by appears_count desc limit 1;