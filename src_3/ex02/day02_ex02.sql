SELECT
	   CASE
	   	WHEN person.name IS NULL THEN '-'
		ELSE person.name
	   END person_name,
	   t1.visit_date AS visit_date,
	   CASE
	   	WHEN pizzeria.name IS NULL THEN '-'
		ELSE pizzeria.name
	   END pizzeria_name
FROM person
FULL JOIN (SELECT *
		  FROM person_visits
		  WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS t1
		  ON person.id = t1.person_id
FULL JOIN pizzeria ON pizzeria.id = t1.pizzeria_id
ORDER BY 1, 2, 3;
