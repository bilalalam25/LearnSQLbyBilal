-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    order_details.pizza_id AS pizza_type,
    ROUND(SUM(order_details.quantity*pizzas.price),2) AS revenue
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_type
ORDER BY revenue DESC
LIMIT 3;