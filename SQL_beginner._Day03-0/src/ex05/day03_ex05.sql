WITH andery_visit AS (SELECT pizzeria.name AS pizzeria_name
                      FROM person_visits
                               JOIN pizzeria
                                    ON pizzeria.id = person_visits.pizzeria_id
                      WHERE person_visits.person_id = 2),

     andrey_order AS (SELECT pizzeria.name AS pizzeria_name
                      FROM person_order
                               JOIN menu
                                    ON menu.id = person_order.menu_id
                               JOIN pizzeria
                                    ON pizzeria.id = menu.pizzeria_id
                      WHERE person_order.person_id = 2)

SELECT  pizzeria_name FROM andery_visit
EXCEPT
SELECT pizzeria_name FROM andrey_order ORDER BY 1;
