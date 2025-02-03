SELECT person.name AS name, menu.pizza_name AS pizza_name, menu.price AS price, 
menu.price - (person_discounts.discount * menu.price / 100) AS discount_price,
pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN menu ON pizzeria.id = menu.pizzeria_id
JOIN person_order ON menu.id = person_order.menu_id
JOIN person ON person_order.person_id = person.id
JOIN person_discounts ON menu.pizzeria_id = person_discounts.pizzeria_id AND person_order.person_id = person_discounts.person_id
ORDER BY name, pizza_name;