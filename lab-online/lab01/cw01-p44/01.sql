USE Northwind
SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('Japan', 'Italy')