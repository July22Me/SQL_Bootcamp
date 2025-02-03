CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts(person_id, pizzeria_id); 
SET ENABLE_SEQSCAN = OFF;
EXPLAIN ANALYZE
SELECT * FROM person_discounts
WHERE pizzeria_id = 4 AND person_id = 2;