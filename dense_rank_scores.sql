/*
Problem:
Find the rank of the scores from the Scores table.
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| score       | decimal |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the score of a game. Score is a floating point value with two decimal places.

Ranking Rules:
1. Scores should be ranked from highest to lowest.
2. If two scores are the same, they should have the same rank.
3. After a tie, the next rank should be the next consecutive integer
   (i.e., no gaps between ranks).
4. Return the result ordered by score in descending order.

Table:
Scores(id, score)

Concept:
DENSE_RANK (Window / Analytic Function)

Explanation:
- DENSE_RANK() assigns the same rank to identical scores.
- Unlike RANK(), it does not skip rank numbers after ties.
- ORDER BY score DESC ensures higher scores get better ranks.


Example 1:

Input: 
Scores table:
+----+-------+
| id | score |
+----+-------+
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |
+----+-------+
Output: 
+-------+------+
| score | rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+

Solution:
*/

SELECT SCORE, DENSE_RANK() OVER(ORDER BY SCORE DESC)RANK FROM SCORES;


