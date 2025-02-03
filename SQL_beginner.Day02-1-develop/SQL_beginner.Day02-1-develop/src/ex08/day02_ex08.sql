SELECT person.name AS person_name FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN person ON person_order.person_id = person.id 
WHERE person.gender = 'male' AND (person.address = 'Samara' OR person.address = 'Moscow') AND (menu.pizza_name = 'mushroom pizza' OR menu.pizza_name = 'pepperoni pizza')
ORDER BY person_name DESC;