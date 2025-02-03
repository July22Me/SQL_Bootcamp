SELECT new_table.object_name 
FROM (SELECT pizza_name AS object_name, 1 AS class
FROM menu
UNION ALL
SELECT name, 2 AS class
FROM person
ORDER BY class DESC, object_name) AS new_table