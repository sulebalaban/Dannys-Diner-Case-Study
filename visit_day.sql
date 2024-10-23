##How many days has each customer visited the restaurant?##
SELECT customer_id, COUNT(order_date) AS visit_day
FROM sales 
GROUP BY 1;
