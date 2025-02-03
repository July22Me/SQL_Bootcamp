SELECT menu1.pizza_name AS pizza_name, pizzeria1.name AS pizzeria_name_1, pizzeria2.name AS pizzeria_name_2, menu1.price AS price 
FROM pizzeria pizzeria1
JOIN menu menu1 ON menu1.pizzeria_id = pizzeria1.id
JOIN menu menu2 ON menu1.price = menu2.price
JOIN pizzeria pizzeria2 ON menu2.pizzeria_id = pizzeria2.id
WHERE (menu2.pizzeria_id < menu1.pizzeria_id) AND (menu1.pizza_name = menu2.pizza_name)
ORDER BY pizza_name;