SELECT COALESCE(person.name, '-') as person_name, person_v.visit_date, COALESCE(pizzeria.name, '-') AS pizzeria_name FROM person
FULL JOIN (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') person_v ON person.id = person_v.person_id
FULL JOIN pizzeria ON pizzeria.id = person_v.pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name;