SELECT cname,
COUNT(rid) AS "# of movies" FROM customers
LEFT JOIN rentals USING(cid)
GROUP by cname 
ORDER BY "# of movies" DESC;

SELECT cname,
COUNT(rid) AS "# of movies" FROM customers
LEFT JOIN rentals USING(cid)
WHERE cname LIKE '%e%'
GROUP by cname 
ORDER BY "# of movies" DESC;

-- Other solution (having):
SELECT cname,
COUNT(rid) AS "# of movies" FROM customers
LEFT JOIN rentals USING(cid)
GROUP by cname 
HAVING cname LIKE '%e%'
ORDER BY "# of movies" DESC;