SELECT 
    OrderId,
    SUM(Quantity * (UnitPrice) * (1 - Discount)) AS OrderTotal
FROM
    OrderDetails
GROUP BY OrderID
ORDER BY OrderID