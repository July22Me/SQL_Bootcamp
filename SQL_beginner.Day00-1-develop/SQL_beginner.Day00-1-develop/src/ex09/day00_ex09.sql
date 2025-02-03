SELECT(SELECT name FROM person where person.id = pv.person_id) AS person_name, (SELECT name FROM pizzeria where pizzeria.id = pv.pizzeria_id) AS pizzeria_name
FROM (select * FROM person_visits WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY 1 ASC, 2 DESC;