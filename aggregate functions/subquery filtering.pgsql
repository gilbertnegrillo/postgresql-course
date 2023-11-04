-- Wishlists database:

-- SELECT pfirstname, plastname, ppoints FROM people
-- WHERE ppoints = (SELECT MAX(ppoints) FROM people);

-- SELECT pfirstname, plastname, ppoints FROM people
-- WHERE ppoints > (SELECT AVG(ppoints) FROM people);

-- SELECT COUNT(*) FROM people
-- WHERE ppoints > (SELECT AVG(ppoints) FROM people);

-- Movie database:

SELECT customers.cname, 
(SELECT COUNT(*) FROM rentals 
    WHERE rentals.cid = customers.cid) 
    AS "Amt" 
FROM customers WHERE (SELECT COUNT(*) FROM rentals 
    WHERE rentals.cid = customers.cid) > 2;