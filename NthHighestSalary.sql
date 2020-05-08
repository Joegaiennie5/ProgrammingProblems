CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      
      SELECT Salary FROM 
      (SELECT Salary, (SELECT COUNT(DISTINCT(Salary)) from Employee Where Employee.Salary >= Employee1.Salary) AS RankSalary
      FROM Employee AS Employee1) AS EmployeeSalaryRank
      WHERE RankSalary = N
      limit 1
  );
END