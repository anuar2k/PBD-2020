USE Northwind
SELECT OrderID,
       MIN(UnitPrice) AS MinPrice,
       MAX(UnitPrice) AS MaxPrice
FROM [Order Details]
GROUP BY OrderID