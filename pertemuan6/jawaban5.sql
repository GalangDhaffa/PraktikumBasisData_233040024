SELECT a.Name, b.Name
FROM Employee as a
INNER JOIN Employee as b
on a.ManagerID = b.EmployeeID