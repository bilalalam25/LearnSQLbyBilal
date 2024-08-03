CREATE DATABASE pizzahut;

CREATE TABLE order_details(
order_details_id INT NOT NULL,
order_id INT NOT NULL,
pizza_id TEXT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY(order_details_id) );