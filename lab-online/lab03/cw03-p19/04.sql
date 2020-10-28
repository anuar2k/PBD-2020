SELECT DISTINCT S.SupplierID, CompanyName, Phone
FROM Products
JOIN Suppliers S ON Products.SupplierID = S.SupplierID
WHERE UnitsInStock = 0