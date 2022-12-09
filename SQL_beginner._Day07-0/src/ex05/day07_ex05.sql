SELECT DISTINCT name
FROM person
WHERE person.id in (SELECT id FROM person_order)
ORDER BY 1;

