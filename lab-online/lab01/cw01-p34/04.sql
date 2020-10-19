USE Northwind
SELECT ProductName, UnitPrice FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName LIKE '%meat%'
