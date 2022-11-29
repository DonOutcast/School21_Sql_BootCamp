SELECT name FROM person JOIN person_order ON person_order.id = person.id JOIN menu ON menu.id = person_order.menu_id
WHERE address = 'Samara' or address = 'Moscow' and pizza_name = 'pepperoni pizza' or pizza_name = 'mushrooms pizza'
ORDER BY name DESC ;
