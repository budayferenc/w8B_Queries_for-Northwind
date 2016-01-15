SELECT 
    c.CategoryName,
    p.ProductName,
    p.QuantityPerUnit,
    p.UnitsInStock
FROM
    Products AS p
        INNER JOIN
    Categories AS c ON p.CategoryID = c.CategoryID
WHERE
    Discontinued = 0
GROUP BY CategoryName , ProductName