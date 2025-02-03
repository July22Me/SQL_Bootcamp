SELECT missing_date::date FROM 
generate_series('2022-01-01', '2022-01-10', interval '1 day') AS missing_date 
LEFT JOIN (SELECT * FROM person_visits where person_id = '1' OR person_id = '2') table1
ON missing_date = table1.visit_date
WHERE table1.id IS NULL
ORDER BY missing_date;