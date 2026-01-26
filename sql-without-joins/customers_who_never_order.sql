-- -----------------------------------------------------------------------------
-- Problem: Customers Who Never Order
--
-- Table: Customers
-- +----+-------+
-- | id | name  |
-- +----+-------+
-- | 1  | Joe   |
-- | 2  | Henry |
-- | 3  | Sam   |
-- | 4  | Max   |
-- +----+-------+
--
-- Table: Orders
-- +----+------------+
-- | id | customerId |
-- +----+------------+
-- | 1  | 3          |
-- | 2  | 1          |
-- +----+------------+
--
-- Task:
-- Display the names of customers who have never placed any order.
--
-- Explanation:
-- - Orders.customerId shows which customers placed orders (1 and 3).
-- - Customers with id 2 (Henry) and 4 (Max) do not appear in Orders.
-- - Therefore, Henry and Max never ordered anything.
--
-- Expected Output:
-- +-----------+
-- | Customers |
-- +-----------+
-- | Henry     |
-- | Max       |
-- +-----------+
--
-- Concept Used:
-- Subquery, NOT IN
-- -----------------------------------------------------------------------------
-- SOLUTION

SELECT NAME AS CUSTOMERS 
FROM CUSTOMERS 
WHERE ID NOT IN 
(SELECT CUSTOMERID 
FROM ORDERS
WHERE CUSTOMERID IS NOT NULL);
