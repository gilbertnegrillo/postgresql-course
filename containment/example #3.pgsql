SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) @> CAST('{"favoriteFoods": ["Apple"]}' AS JSONB);