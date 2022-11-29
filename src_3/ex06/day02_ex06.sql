SELECT pizza_name, pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu
ON menu.id = person_order.menu_id
JOIN pizzeria
ON menu.pizzeria_id = pizzeria.id
WHERE person_id = 1 OR person_id = 4
ORDER BY 1,2;
