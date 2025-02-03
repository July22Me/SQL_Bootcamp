SELECT person.address, 
ROUND((MAX(person.age)-(MIN(person.age)/MAX(person.age::NUMERIC))),2) AS formula,
ROUND((AVG(person.age)),2) AS average,
CASE 
    WHEN (MAX(person.age)-(MIN(person.age)/MAX(person.age))) > (AVG(person.age)) THEN 'true'
    ELSE 'false'
END
FROM person
GROUP BY person.address
ORDER BY address;