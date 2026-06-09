SELECT
p.Product_Name,
SUM(o.Revenue) AS Total_Revenue
FROM Products p
JOIN Orders o
ON p.Product_ID = o.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Revenue DESC;
