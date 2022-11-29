SELECT order_date AS action_date,
	   person.name AS person_name
FROM person_order
JOIN person ON person_order.person_id = person.id
INTERSECT
SELECT visit_date, person.name
FROM person_visits
JOIN person ON person_visits.person_id = person.id
ORDER BY action_date ASC, person_name DESC;
