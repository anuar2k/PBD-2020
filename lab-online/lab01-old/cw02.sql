USE Northwind

SELECT SupplierID,
       CONCAT_WS(' ', ISNULL(Phone, 'none'), ISNULL(Fax, 'none'))
FROM Suppliers