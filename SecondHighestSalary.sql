# Second Highest Salary 

SELECT Max(Salary) as SecondHighestSalary
From Employee 
WHERE Salary not in 
(
    Select Max(Salary) from Employee
)