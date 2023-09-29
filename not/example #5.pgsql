SELECT pfirstname, plastname, ppoints, pdob
FROM people
WHERE ppoints < 250 OR ppoints > 750
ORDER BY ppoints ASC;