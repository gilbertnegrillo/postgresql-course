SELECT pcity, pstate, COUNT(*) AS "people per city" FROM people
GROUP BY pcity, pstate
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

-- Where:
SELECT pcity, pstate, COUNT(*) AS "people per city" FROM people
WHERE pcity LIKE 'A%'
GROUP BY pcity, pstate
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, COUNT(*) AS "people per city" FROM people
WHERE ppoints > 500
GROUP BY pcity, pstate
HAVING COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, COUNT(*) AS "people per city" FROM people
GROUP BY pcity, pstate
HAVING pcity LIKE 'A%' AND COUNT(*) >= 2
ORDER BY "people per city" DESC, pcity ASC;