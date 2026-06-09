-- Customers Without Orders

SELECT c.customer_id,
       c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- Top Customers

SELECT customer_name,
       SUM(revenue) AS Total_Revenue
FROM orders
GROUP BY customer_name
ORDER BY Total_Revenue DESC;
