USE Northwind
SELECT M.EmployeeID, M.FirstName, M.LastName
FROM Employees M
LEFT JOIN Employees S ON S.ReportsTo = M.EmployeeID
WHERE S.ReportsTo IS NULL