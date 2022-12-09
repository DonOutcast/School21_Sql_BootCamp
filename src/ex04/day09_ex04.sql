CREATE OR REPLACE FUNCTION fnc_persons_female()
RETURNS TABLE (id bigint, name varchar, age integer, gender varchar, address varchar)
    AS $$
        SELECT * FROM person p
        WHERE p.gender = 'female';
    $$LANGUAGE sql;

CREATE OR REPLACE FUNCTION fnc_persons_male()
RETURNS TABLE (id bigint, name varchar, age integer, gender varchar, address varchar)
    AS $$
        SELECT * FROM person p
        WHERE p.gender = 'male';
    $$LANGUAGE sql;

SELECT * FROM fnc_persons_male();
SELECT * FROM fnc_persons_female();
