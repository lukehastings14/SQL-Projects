/*
QUESTION: 
what percentage of games were wins from home team, away team, and which ones were draws?
Show output as a result of 2 decimal places.
*/

WITH total_games AS (SELECT CAST(COUNT(*) AS numeric) total FROM  matches)

SELECT result, round(100*CAST(COUNT(*) AS numeric) / (select total from total_games), 2) pct
FROM matches
GROUP BY result
ORDER BY 2 DESC;