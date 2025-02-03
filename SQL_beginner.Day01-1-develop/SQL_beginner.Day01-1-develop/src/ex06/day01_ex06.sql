SELECT order_date AS action_date, (SELECT person.name FROM person WHERE person_order.person_id = person.id) AS person_name FROM person_order
INTERSECT ALL
SELECT visit_date, (SELECT person.name FROM person WHERE person_visits.person_id = person.id) FROM person_visits
ORDER BY action_date ASC, person_name DESC;