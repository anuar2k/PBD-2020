USE Northwind
SELECT OrderID, SUM(Quantity) AS Qty FROM [Order Details]
WHERE ProductID = 50
GROUP BY OrderID
WITH ROLLUP