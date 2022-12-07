SELECT person.name                                            AS name,
       pizza_name,
       price,
       (menu.price / 100 * (100 - person_discounts.discount)) AS discount_price,
       pizzeria.name                                          AS pizzeria_name
FROM person
JOIN person_order
ON person_order.person_id = person.id
JOIN menu
ON menu.id = person_order.menu_id
JOIN person_discounts
ON person_discounts.person_id = person_order.person_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY 1, 2;
