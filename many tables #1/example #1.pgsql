SELECT * FROM customers;

UPDATE customers
    SET cname = CONCAT(cname, '+HERO')
    WHERE customers.cid IN (SELECT rentals.cid
        FROM rentals NATURAL FULL JOIN movies
        WHERE movies.mname = 'The Lives of Others');


SELECT * FROM customers;
