USE Northwind
SELECT ProductName, UnitPrice FROM Products
JOIN Categories C on Products.CategoryID = C.CategoryID
WHERE C.CategoryName LIKE '%meat%'