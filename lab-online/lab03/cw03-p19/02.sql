USE Northwind
SELECT ProductName, UnitsInStock
FROM Products
JOIN Suppliers S ON S.SupplierID = Products.SupplierID
WHERE CompanyName = 'Tokyo Traders'