USE Northwind
SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('UK', 'Italy')
ORDER BY Country, CompanyName
