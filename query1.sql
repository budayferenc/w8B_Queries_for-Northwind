SELECT 
    od.OrderId,
    od.ProductId,
    p.ProductName,
    od.UnitPrice,
    od.Quantity,
    od.Discount,
    (od.Quantity * (od.UnitPrice) * (1 - od.Discount)) AS Total
FROM
    OrderDetails AS od
        INNER JOIN
    Products AS p ON od.ProductId = p.ProductId
ORDER BY OrderID , ProductId