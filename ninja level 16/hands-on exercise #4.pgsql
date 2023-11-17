UPDATE people
    SET plastname = CONCAT(plastname, '+HERO')
    WHERE ppoints >= (SELECT AVG(ppoints) FROM people)
    RETURNING pid, plastname, ppoints;

-- Other Solution:
-- UPDATE people
    -- SET plastname = plastname || '+HERO'
    -- WHERE ppoints >= (SELECT AVG(ppoints) FROM people)
    -- RETURNING pid, plastname, ppoints;