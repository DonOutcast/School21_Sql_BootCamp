CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson varchar DEFAULT 'Dmitriy',
    prubles numeric DEFAULT 500,
    pdate date DEFAULT '2022-01-01')
    RETURNS varchar
AS
$$
DECLARE
    pizzeria_name varchar;
BEGIN
    SELECT pz.name
    INTO pizzeria_name
    FROM pizzeria pz
             INNER JOIN person_visits pv on pv.pizzeria_id = pz.id
             INNER JOIN person p ON p.id = pv.person_id
             INNER JOIN menu m ON m.pizzeria_id = pz.id
    WHERE m.price < prubles
      AND p.name IN (pperson)
      AND pv.visit_date IN (pdate);
    RETURN pizzeria_name;
END;
$$ LANGUAGE plpgsql;

SELECT *
FROM fnc_person_visits_and_eats_on_date(prubles := 800);
SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna', prubles := 1300, pdate := '2022-01-01');
