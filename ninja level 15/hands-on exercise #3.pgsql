SELECT pfirstname, plastname, 
COUNT(lid) FROM people 
LEFT JOIN lists USING(pid) 
GROUP BY pfirstname, plastname;

-- Other solution:
SELECT pfirstname, plastname, 
COUNT(lid) FROM people 
NATURAL LEFT JOIN lists 
GROUP BY pfirstname, plastname;

-- Order by:
SELECT pfirstname, plastname, 
COUNT(lid) AS "# of lists" FROM people 
LEFT JOIN lists USING(pid) 
GROUP BY pfirstname, plastname
ORDER BY "# of lists" DESC;

-- Other solution:
SELECT pfirstname, plastname, 
COUNT(lid) FROM people 
NATURAL LEFT JOIN lists 
GROUP BY pfirstname, plastname
ORDER BY COUNT DESC;