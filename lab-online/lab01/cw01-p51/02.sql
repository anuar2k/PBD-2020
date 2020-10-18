USE Northwind
SELECT CategoryID, ProductName, UnitPrice FROM Products
ORDER BY CategoryID, UnitPrice DESC
-- or
-- ORDER BY 1, 3 DESC