USE Northwind
SELECT OrderID, ProductID, SUM(Quantity) AS Qty FROM [Order Details]
GROUP BY OrderID, ProductID
WITH ROLLUP