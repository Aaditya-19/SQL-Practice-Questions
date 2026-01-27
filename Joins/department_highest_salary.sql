-- ============================================================================
-- Problem: Department Highest Salary
-- ============================================================================
--
-- Table: Employee
--
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | id           | int     |
-- | name         | varchar |
-- | salary       | int     |
-- | departmentId | int     |
-- +--------------+---------+
--
-- id is the primary key.
-- departmentId is a foreign key referencing Department.id.
--
-- Each row represents an employee with their salary and department.
--
--
-- Table: Department
--
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- +-------------+---------+
--
-- id is the primary key.
-- Each row represents a department.
--
--
-- Task:
-- Write a query to find employees who have the highest salary
-- in each department.
--
-- Return the result table in any order.
--
--
-- Example Output:
--
-- +------------+----------+--------+
-- | Department | Employee | Salary |
-- +------------+----------+--------+
-- | IT         | Jim      | 90000  |
-- | Sales      | Henry    | 80000  |
-- | IT         | Max      | 90000  |
-- +------------+----------+--------+
--
-- ============================================================================
-- Solution
-- ============================================================================

SELECT D.NAME AS Department, E.NAME AS Employee,E.SALARY AS Salary
FROM EMPLOYEE E JOIN DEPARTMENT D
ON E.DEPARTMENTID = D.ID
WHERE (E.DEPARTMENTID,E.SALARY) IN
                             (SELECT DEPARTMENTID,MAX(SALARY)
                               FROM EMPLOYEE
                               GROUP BY DEPARTMENTID);
