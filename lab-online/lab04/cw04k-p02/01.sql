USE Northwind
SELECT ProductID,
       ProductName,
       (SELECT MAX(Quantity)
        FROM [Order Details]
        WHERE Products.ProductID = [Order Details].ProductID) AS Max
FROM Products