WITH table1 AS ((SELECT pizzeria.name, COUNT(*) AS count, 'order' AS action_type
FROM person_order 
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY name
ORDER BY count DESC)
UNION
(SELECT pizzeria.name, COUNT(*) AS count, 'visit' AS action_type
FROM person_visits 
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id 
GROUP BY name 
ORDER BY count DESC )
ORDER BY action_type, count DESC)
SELECT name, SUM(table1.count) AS total_count
FROM table1
GROUP BY name
ORDER BY total_count DESC, name;

