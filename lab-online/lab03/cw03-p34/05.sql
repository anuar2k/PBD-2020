USE Northwind
SELECT Customers.CustomerID,
       O.OrderID,
       SUM(CONVERT(money, Quantity * UnitPrice * (1 - Discount))) AS TotalPrice,
       IIF(O.OrderID IS NOT NULL, 'yes', 'no') AS HasOrdered
FROM Customers
LEFT JOIN Orders O ON Customers.CustomerID = O.CustomerID
LEFT JOIN [Order Details] [O D] ON O.OrderID = [O D].OrderID
GROUP BY Customers.CustomerID, O.OrderID