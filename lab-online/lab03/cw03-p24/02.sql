USE Northwind
SELECT ProductName, UnitPrice, CompanyName
FROM Products
JOIN Suppliers S ON Products.SupplierID = S.SupplierID
JOIN Categories C ON Products.CategoryID = C.CategoryID
WHERE CategoryName = 'Confections'