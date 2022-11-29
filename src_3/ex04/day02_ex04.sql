WITH info_pizza AS (SELECT name, id
		   	FROM pizzeria),
	 info_menu AS (SELECT pizza_name, price, pizzeria_id
		    FROM menu
			WHERE pizza_name IN ('mushroom pizza','pepperoni pizza')
		   )
SELECT 	info_menu.pizza_name AS pizza_name,
		info_pizza.name AS pizzeria_name,
		info_menu.price AS price
FROM info_pizza
JOIN info_menu
ON info_pizza.id = info_menu.pizzeria_id
ORDER BY 1, 2;
