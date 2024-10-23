##If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?##
SELECT sales.customer_id,SUM(CASE 
WHEN menu.product_name='sushi' THEN menu.price*20
ELSE menu.price*10
END ) AS total_points
FROM sales 
JOIN menu
ON menu.product_id=sales.product_id
GROUP BY 1;
