USE Northwind
SELECT ProductName, UnitsInStock FROM Products
JOIN Suppliers on Products.SupplierID = Suppliers.SupplierID
WHERE
Suppliers.CompanyName = 'Tokyo Traders'
