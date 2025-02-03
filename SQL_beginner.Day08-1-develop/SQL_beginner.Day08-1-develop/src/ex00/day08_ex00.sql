--Session #1
BEGIN;
UPDATE pizzeria
SET rating = 5
WHERE pizzeria.name = 'Pizza Hut';
SELECT pizzeria.name, rating FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';

--Session #2
BEGIN;
SELECT pizzeria.name, rating FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';

--Session #1
COMMIT;

--Session #2
SELECT pizzeria.name, rating FROM pizzeria
WHERE pizzeria.name = 'Pizza Hut';