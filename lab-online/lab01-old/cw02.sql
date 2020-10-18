USE Northwind

SELECT
       SupplierID,
       FORMATMESSAGE('%s, %s', ISNULL(Phone, 'none'), ISNULL(Fax, 'none'))
FROM Suppliers