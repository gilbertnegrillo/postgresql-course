SELECT pfirstname, plastname, 
COUNT(liid) 
FROM people 
NATURAL LEFT JOIN lists
NATURAL LEFT JOIN listitems 
GROUP BY pfirstname, plastname 
ORDER BY COUNT DESC;

-- Bonus:
SELECT pfirstname, plastname, 
(SELECT COUNT(lid) FROM lists 
WHERE lists.pid = people.pid)
AS "num lists",
COUNT(liid) AS "num list items"
FROM people
NATURAL LEFT JOIN lists
NATURAL LEFT JOIN listitems
GROUP BY pid, pfirstname, plastname
ORDER BY "num list items" DESC, "num lists" DESC;