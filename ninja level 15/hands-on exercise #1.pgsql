SELECT cname, 
COUNT(*) FROM customers 
JOIN rentals 
USING(cid) GROUP BY cname;

-- Final solution:
SELECT cname,
COUNT(rid) FROM customers
LEFT JOIN rentals USING(cid)
GROUP by cname;