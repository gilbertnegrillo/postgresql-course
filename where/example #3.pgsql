SELECT pstate, COUNT(pstate) AS "total" FROM people GROUP BY pstate ORDER BY total;