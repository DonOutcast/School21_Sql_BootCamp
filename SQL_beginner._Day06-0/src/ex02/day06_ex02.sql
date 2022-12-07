SELECT person.name                                            AS name,
       pizza_name,
       price,
       (menu.price / 100 * (100 - person_discounts.discount)) AS discount_price,
       pizzeria.name                                          AS pizzeria_name
FROM person_discounts
         LEFT JOIN person ON person.id = person_discounts.person_id
         LEFT JOIN menu ON menu.pizzeria_id = person_discounts.pizzeria_id
         LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2;
