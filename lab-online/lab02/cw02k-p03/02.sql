USE Northwind
SELECT ProductID, SUM(Quantity) AS Count
FROM [Order Details]
GROUP BY ProductID

-- co jeśli produkt nie wystąpił w [Order Details]?