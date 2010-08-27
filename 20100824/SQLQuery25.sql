SELECT o.[OrderID]
      ,o.[CustomerID]
      ,o.[EmployeeID]
      ,o.[OrderDate]
      ,o.[RequiredDate]
      ,o.[ShippedDate]
      ,o.[ShipVia]
      ,o.[Freight]
      ,o.[ShipName]
      ,o.[ShipAddress]
      ,o.[ShipCity]
      ,o.[ShipRegion]
      ,o.[ShipPostalCode]
      ,o.[ShipCountry]
  FROM [Orders] AS o
  INNER JOIN [Order Details] AS od
  ON o.OrderID = od.OrderID
  GROUP BY o.[OrderID]
      ,o.[CustomerID]
      ,o.[EmployeeID]
      ,o.[OrderDate]
      ,o.[RequiredDate]
      ,o.[ShippedDate]
      ,o.[ShipVia]
      ,o.[Freight]
      ,o.[ShipName]
      ,o.[ShipAddress]
      ,o.[ShipCity]
      ,o.[ShipRegion]
      ,o.[ShipPostalCode]
      ,o.[ShipCountry]
      
  HAVING SUM(od.Quantity * od.UnitPrice) > 10000
GO

