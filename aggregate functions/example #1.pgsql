-- Aggregates:

SELECT COUNT(*) FROM people;
SELECT COUNT(pid) FROM people;
SELECT COUNT(*) AS "OR Pop" FROM people WHERE pstate = 'OR';
SELECT SUM(ppoints) FROM people;
SELECT AVG(ppoints) FROM people;
SELECT MAX(ppoints) FROM people;
SELECT MIN(ppoints) FROM people;
SELECT MIN(pdob) FROM people;
SELECT MAX(pdob) FROM people;
SELECT pfirstname, plastname, ppoints FROM people ORDER by ppoints DESC LIMIT 10;