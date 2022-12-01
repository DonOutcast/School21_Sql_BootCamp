SELECT name FROM person JOIN person_order ON person_order.id = person.id JOIN menu ON menu.id = person_order.menu_id
WHERE address = 'Samara' OR address = 'Moscow' AND gender = 'male' AND pizza_name = 'pepperoni pizza' OR pizza_name = 'mushrooms pizza'
ORDER BY name DESC;
