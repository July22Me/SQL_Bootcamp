--Session 1
BEGIN;
UPDATE pizzeria SET rating = 1.0 WHERE id = 1;
UPDATE pizzeria SET rating = 2.0 WHERE id = 2;
COMMIT;
SELECT SUM(rating) FROM pizzeria;


--Session 2
BEGIN;
UPDATE pizzeria SET rating = 3.0 WHERE id = 2;
UPDATE pizzeria SET rating = 4.0 WHERE id = 1;
COMMIT;
SELECT SUM(rating) FROM pizzeria;