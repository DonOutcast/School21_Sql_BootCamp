WITH t1 AS (SELECT name, COUNT(person_id) AS count, 'visit' AS action_type
            FROM person_visits
                     INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
            GROUP BY name
            ORDER BY action_type ASC, count DESC
            LIMIT 3),

     t2 AS (SELECT pizzeria.name, COUNT(person_id) AS count, 'order' AS action_type
            FROM person_order
                     INNER JOIN menu ON menu.id = person_order.menu_id
                     INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
            GROUP BY name
            ORDER BY action_type ASC, count DESC
            LIMIT 3)

SELECT *
FROM t1
UNION ALL
SELECT *
FROM t2
ORDER BY action_type ASC, count DESC;
