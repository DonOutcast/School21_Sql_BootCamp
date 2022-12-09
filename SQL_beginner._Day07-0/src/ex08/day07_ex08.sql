SELECT person.address, pizzeria.name, COUNT(*) count_of_orders
FROM person
         INNER JOIN person_order ON person.id = person_order.person_id
         INNER JOIN menu ON person_order.menu_id = menu.id
         INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY 1, 2
ORDER BY 1, 2;

