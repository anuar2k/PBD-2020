USE Northwind
SELECT Orders.OrderID, C.CustomerID, SUM(Quantity) AS Qty
FROM Orders
JOIN [Order Details] [O D] ON Orders.OrderID = [O D].OrderID
JOIN Customers C ON Orders.CustomerID = C.CustomerID
GROUP BY Orders.OrderID, C.CustomerID
HAVING SUM(Quantity) > 250