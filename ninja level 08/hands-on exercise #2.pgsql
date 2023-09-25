-- Solution 1: Using accessing desserts.
-- SELECT pfirstname, pfavorites -> 'Desserts' @> CAST('["cake"]' AS JSONB) FROM people;

-- Solution 2: Using without accessing desserts
SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB) FROM people;