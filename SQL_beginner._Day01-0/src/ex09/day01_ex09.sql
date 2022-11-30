SELECT name FROM pizzeria
WHERE name NOT IN (SELECT DISTINCT  name FROM pizzeria JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id);

SELECT name FROM pizzeria WHERE NOT EXISTS
    (SELECT pizzeria_id FROM  person_visits WHERE pizzeria_id = pizzeria.id)
