CREATE OR REPLACE FUNCTION fnc_persons_female()
    RETURNS table(id BIGINT, name VARCHAR, age INTEGER, gender VARCHAR, address VARCHAR) AS
$$
    SELECT * FROM person WHERE gender = 'female';
$$
LANGUAGE SQL;
SELECT * FROM fnc_persons_female();
CREATE OR REPLACE FUNCTION fnc_persons_male()
    RETURNS table(id BIGINT, name VARCHAR, age INTEGER, gender VARCHAR, address VARCHAR) AS
$$
    SELECT * FROM person WHERE gender = 'male';
$$
LANGUAGE SQL;
SELECT * FROM fnc_persons_male();