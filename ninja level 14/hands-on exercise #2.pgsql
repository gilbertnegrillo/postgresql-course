SELECT pfirstname, plastname, 
(SELECT COUNT(*) FROM lists 
    WHERE lists.pid = people.pid) 
FROM people;

-- ORDER:

SELECT pfirstname, plastname, 
(SELECT COUNT(*) FROM lists 
    WHERE lists.pid = people.pid) 
AS AMT 
FROM people ORDER by AMT DESC;