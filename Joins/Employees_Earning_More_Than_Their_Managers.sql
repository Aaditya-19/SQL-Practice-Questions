/*
Problem:
Find the employees who earn more than their managers.
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.

Table:
Employee(id, name, salary, managerId)

Description:
Each row represents an employee with their salary and manager.
If an employee has no manager (managerId is NULL), they should not be included.

Example 1:

Input: 
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
Output: 
+----------+
| Employee |
+----------+
| Joe      |
+----------+


Solution:
*/

SELECT E1.NAME AS Employee
FROM EMPLOYEE E1 JOIN EMPLOYEE E2
ON E1.MANAGERID = E2.ID
WHERE E1.SALARY > E2.SALARY;
