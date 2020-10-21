USE Northwind
SELECT CustomerID
FROM Orders
WHERE YEAR(ShippedDate) = 1998
GROUP BY CustomerID
HAVING COUNT(*) > 8
ORDER BY SUM(Freight) DESC