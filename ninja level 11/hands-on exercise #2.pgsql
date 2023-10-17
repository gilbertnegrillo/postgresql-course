SELECT cname, mname, rid FROM customers 
NATURAL JOIN rentals NATURAL JOIN movies LIMIT 10;

-- Other solution:
-- SELECT customers.cname, movies.mname, rentals.rid FROM   
    -- customers JOIN rentals ON (customers.cid = rentals.cid)
        -- Join movies ON (rentals.mid = movies.mid)
            -- LIMIT 10;