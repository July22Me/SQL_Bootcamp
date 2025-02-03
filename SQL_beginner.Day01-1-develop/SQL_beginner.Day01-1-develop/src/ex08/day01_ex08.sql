SELECT order_date, CONCAT(person.name, '(age:', person.age, ')') AS person_information FROM person_order
NATURAL JOIN (SELECT person.id AS person_id, name, age FROM person) AS person 
ORDER BY order_date ASC, person_information ASC;