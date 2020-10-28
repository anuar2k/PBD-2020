USE Northwind
SELECT ProductID, SUM(Quantity) AS Count
FROM [Order Details]
WHERE ProductID < 3
GROUP BY ProductID

-- co jeśli produkt nie wystąpił w [Order Details]?