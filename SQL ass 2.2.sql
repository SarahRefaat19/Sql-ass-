SELECT *
FROM Customers
CROSS JOIN Orders;

SELECT Customers.Name, Orders.*
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT Customers.Name, Orders.*
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.Name, Orders.*
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT Customers.Name, Orders.*
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Name, COUNT(*)
FROM Customers
GROUP BY Name
HAVING COUNT(*) > 1;

SELECT Customers.Name, Orders.OrderID,Orders.Amount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID

SELECT Customers.Name, Orders.*
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.Amount > 500;

SELECT Customers.*
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;

SELECT Customers.Name, COUNT(Orders.OrderID) AS OrderCount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Name;

SELECT Customers.Name, SUM(Orders.Amount) AS TotalAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Name;

UPDATE Orders
SET Amount = Amount * 1.10
WHERE CustomerID = (
    SELECT CustomerID
    FROM Customers
    WHERE Name = 'John Doe'
);

DELETE FROM Orders
WHERE CustomerID NOT IN (
    SELECT CustomerID
    FROM Customers
);

