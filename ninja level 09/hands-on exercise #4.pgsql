-- First solution: "NOT" operator.

-- SELECT pfirstname, plastname, pstate, ppoints 
-- FROM people 
-- WHERE ppoints >= 7000 AND NOT pstate = 'NY'; 

-- Second Solution: "<>" operator.

SELECT pfirstname, plastname, pstate, ppoints
FROM people
WHERE ppoints >= 7000 AND pstate <> 'NY';