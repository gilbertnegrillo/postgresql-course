SELECT pcity, COUNT(*) AS "population" FROM people GROUP BY pcity;

-- Subquery:
SELECT DIStinct pcity, (SELECT COUNT(*) FROM people AS p WHERE p.pcity = people.pcity) FROM people;

SELECT pcity, COUNT(*) AS "people per city" FROM people GROUP BY pcity ORDER BY "people per city" DESC;

SELECT pstate, COUNT(*) AS "people per state" FROM people GROUP BY pstate;

SELECT pstate, COUNT(*) AS "people per state" FROM people GROUP BY pstate ORDER BY "people per state" DESC;

SELECT pfirstname, plastname,
(SELECT COUNT(*) FROM listitems
    WHERE listitems.lid = lists.lid)
FROM people JOIN lists USING(pid) 
WHERE (SELECT COUNT(*) FROM listitems 
    WHERE listitems.lid = lists.lid) > 1;

SELECT pfirstname, plastname,
COUNT(*) AS "# of items" 
FROM people 
JOIN lists USING(pid)
JOIN listitems USING(lid)
GROUP BY pfirstname, plastname
ORDER BY "# of items" DESC;

SELECT pfirstname, listitems
FROM people
JOIN lists USING(pid)
JOIN listitems USING(lid)
WHERE pfirstname = 'Ideipepzekir'