/*
Problem: First Login Date Per Player

Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+

(player_id, event_date) is the primary key.

Description:
This table records the login activity of players.
Each row represents a player who logged in on a particular date using a device and played some games.

Task:
Write a SQL query to find the FIRST login date for each player.

Return the result in any order.

Example:

Input: Activity table

+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+

Expected Output:

+-----------+-------------+
| player_id | first_login |
+-----------+-------------+
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |
+-----------+-------------+
*/

-- Solution

SELECT PLAYER_ID,
TO_CHAR(EVENT_DATE,'YYYY-MM-DD') AS FIRST_LOGIN
FROM
    (SELECT PLAYER_ID,EVENT_DATE,
                            ROW_NUMBER() OVER(PARTITION BY PLAYER_ID ORDER BY EVENT_DATE) AS ROW_NUM
                            FROM ACTIVITY)
                            WHERE ROW_NUM=1;
