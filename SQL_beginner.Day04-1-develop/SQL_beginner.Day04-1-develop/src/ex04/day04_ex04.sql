CREATE VIEW v_symmetric_union AS
(SELECT person_visits.person_id AS person_id FROM person_visits
WHERE person_visits.visit_date = '2022-01-02'
EXCEPT
SELECT person_visits.person_id AS person_id FROM person_visits
WHERE person_visits.visit_date = '2022-01-06')
UNION
(SELECT person_visits.person_id AS person_id FROM person_visits
WHERE person_visits.visit_date = '2022-01-06'
EXCEPT
SELECT person_visits.person_id AS person_id FROM person_visits
WHERE person_visits.visit_date = '2022-01-02')
ORDER BY person_id;

SELECT * FROM v_symmetric_union; 