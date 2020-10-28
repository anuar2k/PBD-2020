USE Northwind
SELECT OrderID,
       SUM(CONVERT(money, Quantity * UnitPrice * (1 - Discount))) AS Total,
       SUM(Quantity) AS Qty
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(Quantity) > 250
ORDER BY Total DESC