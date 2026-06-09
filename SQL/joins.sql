### INNER JOIN
  
SELECT
c.Customer_Name,
p.Product_Name,
o.Revenue
FROM Orders o
INNER JOIN Customers c
ON o.Customer_ID = c.Customer_ID
INNER JOIN Products p
ON o.Product_ID = p.Product_ID;

### LEFT JOIN
  
SELECT
c.Customer_Name
FROM Customers c
LEFT JOIN Orders o
ON c.Customer_ID = o.Customer_ID
WHERE o.Customer_ID IS NULL;

### MULTIPLE JOIN QUERY
SELECT
c.Customer_Name,
o.Order_ID,
p.Product_Name,
o.Revenue
FROM Customers c
JOIN Orders o
ON c.Customer_ID = o.Customer_ID
JOIN Products p
ON o.Product_ID = p.Product_ID;
