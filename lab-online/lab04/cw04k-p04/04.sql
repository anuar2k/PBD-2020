USE Northwind
SELECT *
FROM Products
WHERE (SELECT COUNT(*)
       FROM Orders
       JOIN [Order Details] [O D] ON Orders.OrderID = [O D].OrderID
       WHERE [O D].ProductID = Products.ProductID
       GROUP BY CustomerId
       ) > 1