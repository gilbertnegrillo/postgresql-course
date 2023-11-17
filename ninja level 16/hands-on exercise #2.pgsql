UPDATE people 
SET pfirstname = 'James', 
plastname = 'Bond'
WHERE pid = (SELECT pid FROM people 
    ORDER BY ppoints DESC LIMIT 1)
RETURNING *;

-- Other solution MAX:
-- UPDATE people
    -- SET pfristname = 'James',
    -- plastname = 'Bond'
    -- WHERE ppoints IN (SELECT MAX(ppoints) FROM people)
    -- RETURNING *;