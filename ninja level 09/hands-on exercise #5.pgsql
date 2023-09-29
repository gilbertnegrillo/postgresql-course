-- First Solution: Born between 2004 and 2006.

-- SELECT pfirstname, plastname, pdob
-- FROM people
-- WHERE pdob BETWEEN '2004-01-01' AND '2006-12-31 23:59:59';

-- Second Solution: Born between 2000 and 2010 who is from California.

SELECT pfirstname, plastname, pstate, pdob
FROM people
WHERE pdob BETWEEN '2000-01-01' AND '2010-12-31 23:59:59' AND pstate = 'CA';