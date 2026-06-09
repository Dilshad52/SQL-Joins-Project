-- Customers Without Orders

SELECT
c.Customer_Name
FROM Customers c
LEFT JOIN Orders o
ON c.Customer_ID = o.Customer_ID
WHERE o.Customer_ID IS NULL;

-- Top Customers

SELECT
c.Customer_Name,
SUM(o.Revenue) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Spent DESC;
