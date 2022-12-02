WITH male AS (SELECT pizzeria.name
				FROM pizzeria
			    JOIN menu
			    ON pizzeria.id = menu.pizzeria_id
				JOIN person_order AS porder
				ON menu.id = porder.menu_id
				JOIN person on person.id = porder.person_id
				WHERE gender = 'male'
			   ),
	female AS (SELECT pizzeria.name
			   FROM pizzeria
			   JOIN menu
			   ON pizzeria.id = menu.pizzeria_id
			   JOIN person_order AS porder
			   ON menu.id = porder.menu_id
			   JOIN person on person.id = porder.person_id
			   WHERE gender = 'female'
			  ),
 only_male AS (SELECT name
			   FROM male
			   EXCEPT
			   SELECT name
			   FROM female
			  ),
only_female AS (SELECT name
				FROM female
				EXCEPT
				SELECT name
				FROM male
			   )
SELECT name AS pizzeria_name
FROM only_male
UNION
SELECT name
FROM only_female
ORDER BY 1;
