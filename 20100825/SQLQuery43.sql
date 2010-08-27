SELECT ProductID AS PID, UnitPrice AS Price
FROM Products AS [Product]
FOR XML AUTO, ROOT('PriceList')