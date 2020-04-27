# Highest Salary for each Department 

Select g.Name as Department, e.Name as Employee, e.Salary from Employee as e INNER JOIN 
(SELECT DepartmentID, MAX(Salary) as Salary FROM Employee
GROUP BY DepartmentID
 ) as f
on e.DepartmentID = f.DepartmentID
and e.Salary = f.Salary
INNER JOIN Department G on e.DepartmentID = g.Id