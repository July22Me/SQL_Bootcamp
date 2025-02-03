CREATE TABLE person_audit
(
    created timestamp with time zone default current_timestamp NOT NULL,
    type_event CHAR(1) default 'I' NOT NULL CONSTRAINT ch_type_event CHECK(type_event IN('I', 'U', 'D')),
    row_id BIGINT NOT NULL, 
    name VARCHAR,
    age INTEGER,
    gender VARCHAR, 
    address VARCHAR
);

DROP TABLE person_audit;

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit()
    RETURNS trigger AS
$$
BEGIN 
    INSERT INTO person_audit
    VALUES(current_timestamp, 'I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
    RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER trg_person_insert_audit 
    AFTER INSERT    
    ON person
    FOR EACH ROW
    EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');

SELECT * FROM person_audit;

