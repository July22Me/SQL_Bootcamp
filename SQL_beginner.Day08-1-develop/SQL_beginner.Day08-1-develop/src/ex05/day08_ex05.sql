--Session #1
BEGIN;
SHOW TRANSACTION ISOLATION LEVEL;
SELECT SUM(rating) FROM pizzeria;
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

--Session #2
BEGIN;
SHOW TRANSACTION ISOLATION LEVEL;
UPDATE pizzeria SET rating = 1
WHERE pizzeria.name = 'Pizza Hut';
COMMIT;
SELECT SUM(rating) FROM pizzeria;