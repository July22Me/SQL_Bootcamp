CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name AS pizzeria_name FROM pizzeria
JOIN menu ON pizzeria.id = menu.pizzeria_id 
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person ON person_visits.person_id = person.id
WHERE person.name = 'Dmitriy' AND menu.price < 800 AND visit_date = '2022-01-08';

SELECT * FROM  mv_dmitriy_visits_and_eats ;
