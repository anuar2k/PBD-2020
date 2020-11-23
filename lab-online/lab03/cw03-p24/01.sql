USE Northwind
SELECT ProductName,
       UnitPrice,
       CompanyName,
       Address,
       PostalCode,
       City,
       Country
FROM Products
JOIN Suppliers S ON Products.SupplierID = S.SupplierID
JOIN Categories C ON Products.CategoryID = C.CategoryID
WHERE UnitPrice BETWEEN 20 AND 30 AND
      CategoryName = 'Meat/Poultry'