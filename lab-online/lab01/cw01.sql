USE Northwind
SELECT
       ProductID,
       (Quantity * CONVERT(money, (UnitPrice * (1 - Discount)))) AS BulkPrice
FROM
     [Order Details]
WHERE
      OrderID = 10250