SELECT person.name AS person_name FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN person ON person_order.person_id = person.id 
WHERE person.gender = 'female'AND (menu.pizza_name = 'cheese pizza')
INTERSECT
SELECT person.name AS person_name FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN person ON person_order.person_id = person.id 
WHERE person.gender = 'female'AND (menu.pizza_name = 'pepperoni pizza')
ORDER BY person_name;