USE Northwind
SELECT ProductName, UnitPrice, CompanyName, Address, PostalCode, City, Country
FROM Products
JOIN Suppliers S ON S.SupplierID = Products.SupplierID
WHERE UnitPrice BETWEEN 20 AND 30