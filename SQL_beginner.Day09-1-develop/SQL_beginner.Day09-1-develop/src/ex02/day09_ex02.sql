CREATE OR REPLACE FUNCTION fnc_trg_person_delete_audit()
    RETURNS trigger AS
$$
BEGIN 
    INSERT INTO person_audit
    VALUES(current_timestamp, 'D', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    RETURN OLD;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE TRIGGER trg_person_delete_audit 
    AFTER DELETE    
    ON person
    FOR EACH ROW
    EXECUTE FUNCTION fnc_trg_person_delete_audit();

DELETE FROM person WHERE id = 10;
SELECT * FROM person_audit;