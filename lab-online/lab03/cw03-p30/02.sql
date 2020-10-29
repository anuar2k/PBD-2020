USE Northwind
SELECT M.FirstName, M.LastName
FROM Employees M
LEFT JOIN Employees S ON S.ReportsTo = M.EmployeeID
WHERE S.ReportsTo IS NULL