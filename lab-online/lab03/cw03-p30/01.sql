USE Northwind
SELECT M.FirstName AS MFirstName,
       M.LastName AS MLastName,
       S.FirstName AS SFirstName,
       S.LastName AS SLastName
FROM Employees M
JOIN Employees S ON S.ReportsTo = M.EmployeeID