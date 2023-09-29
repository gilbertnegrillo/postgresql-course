-- First Solution: In operator.

-- SELECT pfirstname, plastname, pstate
-- FROM people
-- WHERE pstate IN ('WY', 'KY', 'GA');

-- Second Solution: In operator who is NOT from WY KY or GA.

SELECT pfirstname, plastname, pstate
FROM people
WHERE pstate NOT IN ('WY', 'KY', 'GA');