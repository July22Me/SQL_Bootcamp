SELECT menu.pizza_name AS pizza_name, menu.price AS price, pizzeria.name FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id 
EXCEPT
SELECT menu.pizza_name, menu.price, pizzeria.name FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY pizza_name, price;