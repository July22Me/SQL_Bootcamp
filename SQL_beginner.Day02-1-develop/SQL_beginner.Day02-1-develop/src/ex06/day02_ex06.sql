SELECT menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name FROM person_order
JOIN person ON person.id = person_order.person_id
JOIN menu ON person_order.menu_id = menu.id 
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE (person.name = 'Anna' OR person.name = 'Denis')
ORDER BY pizza_name, pizzeria_name;
