-- Movies database:

-- SELECT customers.cname, 
-- (SELECT COUNT(*) FROM rentals 
--     WHERE rentals.cid = customers.cid) 
--     AS "movies rented" 
-- FROM customers;

-- Wishlists database: 

-- SELECT pfirstname, plastname,
-- (SELECT COUNT(*) FROM lists 
--     WHERE people.pid = lists.pid) 
--     AS AMT
-- FROM people ORDER by AMT DESC;

-- SELECT pfirstname, plastname, lid, liid FROM
-- people JOIN lists USING (pid)
-- JOIN listitems USING (lid);

SELECT pfirstname, plastname, lid, liid, iname FROM 
people JOIN lists USING (pid)
JOIN listitems USING (lid)
JOIN items USING (iid);