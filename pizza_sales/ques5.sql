-- Identify the most common pizza size ordered.
SELECT 
    pizzas.size, COUNT(order_details.quantity) AS quantity_order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY quantity_order_count DESC
LIMIT 1;