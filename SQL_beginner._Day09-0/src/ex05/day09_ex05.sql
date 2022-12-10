DROP FUNCTION IF EXISTS fnc_persons_male;
DROP FUNCTION IF EXISTS fnc_persons_female;


CREATE OR REPLACE FUNCTION fnc_persons(IN pgender varchar DEFAULT 'female')
    RETURNS TABLE
            (
                id      bigint,
                name    varchar,
                age     integer,
                gender  varchar,
                address varchar
            )
AS
$$
SELECT *
FROM person p
WHERE p.gender IN (pgender);
$$ LANGUAGE sql;

SELECT *
FROM fnc_persons(pgender := 'male');
SELECT *
FROM fnc_persons();
