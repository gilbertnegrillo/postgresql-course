SELECT pcity, pstate, COUNT(*) AS "people per city" FROM people
GROUP BY pcity, pstate;

SELECT pcity, pstate, COUNT(*) AS "people per city" FROM people
GROUP BY pcity, pstate
ORDER BY "people per city" DESC,
pcity ASC LIMIT 10;