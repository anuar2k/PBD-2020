USE Northwind
SELECT MIN(UnitPrice) AS Min,
       AVG(UnitPrice) AS Avg,
       MAX(UnitPRICE) AS Max
FROM Products
WHERE
QuantityPerUnit LIKE '%bottle%'