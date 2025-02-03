CREATE OR REPLACE FUNCTION 
fnc_person_visits_and_eats_on_date(pperson VARCHAR DEFAULT 'Dmitriy', pprice NUMERIC DEFAULT '500',
pdate DATE DEFAULT '2022-01-08')
    RETURNS table(pizzeria_name VARCHAR) AS
$$
DECLARE
    pizzeria_name VARCHAR;
BEGIN
RETURN QUERY
    SELECT pizzeria.name
    AS pizzeria_name
    FROM pizzeria
    JOIN menu ON menu.pizzeria_id = pizzeria.id
    JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
    JOIN person ON person.id = person_visits.person_id
    WHERE person.name = pperson AND menu.price < pprice AND person_visits.visit_date = pdate; 
END;
$$
LANGUAGE plpgsql;

SELECT * FROM fnc_person_visits_and_eats_on_date(pprice := 800);
SELECT * FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
