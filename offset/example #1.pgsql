SELECT * FROM people ORDER BY pid LIMIT 10 OFFSET 10;
SELECT * FROM people ORDER BY pid OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;
SELECT * FROM people ORDER BY pid OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;