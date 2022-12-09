with visits_and_ordres AS (
    (SELECT 	name,
			COUNT(person_id) AS count,
			'visit' AS action_type
			FROM person_visits
			JOIN pizzeria
			ON pizzeria.id = pizzeria_id
			GROUP BY name
    		ORDER BY count DESC
		   )
		   UNION
	   (SELECT 	name,
			COUNT(person_id) AS count,
			'order' AS action_type
			FROM person_order
			JOIN menu
			ON menu.id = menu_id
			JOIN pizzeria
			ON pizzeria.id = pizzeria_id
			GROUP BY name
	   		ORDER BY count DESC
			)
		   			ORDER BY action_type ASC, count DESC)
SELECT name, sum(count) total_count FROM visits_and_ordres
GROUP BY name
ORDER BY 2 DESC;
