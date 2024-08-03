-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT order_date,
    ROUND(AVG(total_quantity),0) AS AVG_pizza
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity) AS total_quantity
    FROM
        order_details
    JOIN orders ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date)total
GROUP BY 
order_date;