USE Northwind
SELECT O.CustomerID, O.ContactName, O.Phone
FROM Customers O
WHERE O.CustomerID IN (
    SELECT I.CustomerID
    FROM Orders I
    JOIN [Order Details] [O D] ON I.OrderID = [O D].OrderID
    JOIN Products P ON [O D].ProductID = P.ProductID
    JOIN Categories C ON P.CategoryID = C.CategoryID
    WHERE CategoryName = 'Confections'
    )