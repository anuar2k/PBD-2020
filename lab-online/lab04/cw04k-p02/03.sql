USE Northwind
SELECT *
FROM Products O
WHERE O.UnitPrice < (SELECT AVG(I.UnitPrice)
                     FROM Products I
                     WHERE I.CategoryID = O.CategoryID)

SELECT O.ProductID, I.CategoryID
FROM Products O, Products I
GROUP BY O.ProductID, I.CategoryID
