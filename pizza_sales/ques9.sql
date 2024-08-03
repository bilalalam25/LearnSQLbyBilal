-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, COUNT(name) AS distribution
FROM
    pizza_types
GROUP BY category
ORDER BY distribution ASC;