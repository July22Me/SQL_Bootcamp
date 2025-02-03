DELETE FROM person_order
WHERE person_order.order_date = '2022-02-25';

DELETE FROM menu
WHERE menu.pizza_name = 'greek pizza';

SELECT * FROM person_order WHERE order_date = '2022-02-25';
SELECT * FROM menu WHERE pizza_name = 'greek pizza';