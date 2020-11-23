USE Northwind
SELECT *
FROM Products O
WHERE O.UnitPrice < (SELECT AVG(I.UnitPrice)
                     FROM Products I)