USE Northwind
SELECT CategoryName, C.CustomerID, SUM(Quantity) AS TotalQty
FROM Categories
JOIN Products P ON Categories.CategoryID = P.CategoryID
JOIN [Order Details] [O D] ON P.ProductID = [O D].ProductID
JOIN Orders O ON [O D].OrderID = O.OrderID
JOIN Customers C ON O.CustomerID = C.CustomerID
GROUP BY CategoryName, C.CustomerID