SELECT Employee.Name, Departments.DepartmentName
FROM Employee
INNER JOIN Departments
ON Employee.DepartmentsID * Departments.DepartmentsID