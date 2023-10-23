SELECT movies.mname, rentals.rid, customers.cname 
FROM customers 
RIGHT JOIN rentals USING (cid) 
RIGHT JOIN movies USING (mid);

-- Other solution RIGHT JOIN:
-- SELECT movies.mname, rentals.rid, customers.cname 
-- FROM customers 
-- NATURAL RIGHT JOIN rentals 
-- NATURAL RIGHT JOIN movies;

SELECT movies.mname, rentals.rid, customers.cname 
FROM movies 
LEFT JOIN rentals USING (mid) 
LEFT JOIN customers USING (cid);

-- Other solution LEFT JOIN:
-- SELECT movies.mname, rentals.rid, customers.cname 
-- FROM movies 
-- NATURAL LEFT JOIN rentals 
-- NATURAL LEFT JOIN customers;
