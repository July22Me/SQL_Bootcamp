CREATE VIEW v_price_with_discount AS
SELECT person.name AS person_name, menu.pizza_name AS pizza_name, menu.price AS price, CAST((menu.price * 0.9) AS INT) AS discount_price FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN person ON person_order.person_id = person.id
ORDER BY person_name, pizza_name;

SELECT * FROM v_price_with_discount;