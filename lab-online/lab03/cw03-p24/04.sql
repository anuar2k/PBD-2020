USE Northwind
SELECT DISTINCT Customers.CustomerID, ContactName, Phone
FROM Customers
JOIN Orders O ON Customers.CustomerID = O.CustomerID
JOIN [Order Details] [O D] ON O.OrderID = [O D].OrderID
JOIN Products P ON [O D].ProductID = P.ProductID
JOIN Categories C ON P.CategoryID = C.CategoryID
WHERE CategoryName = 'Confections'