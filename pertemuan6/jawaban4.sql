SELECT Employee.Name, Salaries.Salaries
FROM Employee FULL JOIN Salaries
ON Employee.EmployeeID * Salaries.EmployeeID