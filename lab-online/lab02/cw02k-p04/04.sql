USE Northwind
SELECT OrderID,
       ProductID,
       SUM(Quantity) AS Qty,
       GROUPING(OrderID) AS OG,
       GROUPING(ProductID) AS PG
FROM [Order Details]
GROUP BY OrderID, ProductID
WITH CUBE