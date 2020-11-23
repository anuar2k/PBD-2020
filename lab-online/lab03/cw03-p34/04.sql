USE Northwind
SELECT Customers.CustomerID, ProductName, SUM(Quantity) AS Qty
FROM Customers
JOIN Orders O ON Customers.CustomerID = O.CustomerID
JOIN [Order Details] [O D] ON O.OrderID = [O D].OrderID
JOIN Products P ON [O D].ProductID = P.ProductID
GROUP BY Customers.CustomerID, ProductName, [O D].ProductID
ORDER BY Customers.CustomerID, Qty DESC