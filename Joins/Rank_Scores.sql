/*
Problem:
Find the rank of the scores from the Scores table.

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

Solution:
*/
SELECT SCORE, DENSE_RANK() OVER(ORDER BY SCORE DESC)RANK FROM SCORES;
