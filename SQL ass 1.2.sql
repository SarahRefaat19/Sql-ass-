select * 
from Employees

SELECT *
FROM Employees E
WHERE Name = 'Egypt';

SELECT *
FROM Employees
WHERE DepartmentID = 3;

SELECT *
FROM Employees
WHERE MonthlySalary > 2000;

SELECT *
FROM Employees
WHERE HireDate > '2020-12-31';

SELECT *
FROM Employees
WHERE ExitDate IS NOT NULL;

SELECT *
FROM Employees
WHERE BonusPerc > 0.1;
