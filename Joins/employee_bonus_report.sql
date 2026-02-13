/*
Problem: Employee Bonus Report

Table: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+
- empId is the primary key.
- Each row contains employee details along with their manager (supervisor) and salary.

Table: Bonus
+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+
- empId is the primary key.
- empId is a foreign key referencing Employee.empId.
- Each row contains the bonus received by an employee.

Task:
Write a SQL query to report the name and bonus amount of each employee who:
1. Has a bonus less than 1000, OR
2. Did not receive any bonus.

Return the result in any order.
*/

SELECT 
    E.name,
    B.bonus
FROM 
    Employee AS E
LEFT JOIN 
    Bonus AS B
    ON E.empId = B.empId
WHERE 
    B.bonus < 1000
    OR B.bonus IS NULL;
