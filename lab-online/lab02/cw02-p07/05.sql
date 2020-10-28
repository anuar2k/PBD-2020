USE Northwind
SELECT SUM(CONVERT(money, Quantity * UnitPrice * (1 - Discount))) AS Total
FROM [Order Details]
WHERE
OrderID = 10250