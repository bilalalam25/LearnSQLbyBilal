-- Calculate the percentage contribution of each pizza type to total revenue.
SELECT 
    pizzas.pizza_type_id,
    CONCAT(ROUND(((SUM(order_details.quantity * pizzas.price)) / (SELECT 
                            SUM(pizzas.price)
                        FROM
                            pizzas
                                JOIN
                            order_details ON order_details.pizza_id = pizzas.pizza_id)) * 100,
                    2),
            '%') AS total_revenue
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.pizza_type_id
ORDER BY pizzas.pizza_type_id;
