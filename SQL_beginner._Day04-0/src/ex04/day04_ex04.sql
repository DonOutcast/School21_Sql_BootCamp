CREATE OR REPLACE VIEW v_symmetric_union AS
WITH visit_02 AS (
    SELECT person_id
    FROM person_visits
    WHERE visit_date = '2022-01-02'
),
     visit_06 AS (
         SELECT *
         FROM person_visits
         WHERE visit_date = '2022-01-06'
     )
SELECT *
FROM visit_02
WHERE person_id NOT IN (SELECT person_id FROM visit_06)
union
SELECT *
FROM visit_06
WHERE person_id NOT IN (SELECT person_id FROM visit_02)
ORDER BY person_id;

