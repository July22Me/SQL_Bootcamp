INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT (generate_series((SELECT MAX(id)+1 FROM person_order),
(SELECT MAX(id) FROM person_order)+(SELECT MAX(id) FROM person))), 
generate_series((select MIN(id) from person), (select MAX(id) from person)),
(select id from menu where pizza_name = 'greek pizza'), '2022-02-25';

SELECT * FROM person_order WHERE order_date = '2022-02-25';