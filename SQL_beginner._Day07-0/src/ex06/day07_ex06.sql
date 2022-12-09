SELECT pizzeria.name, COUNT(*) AS count_of_orders, round(avg(price), 2)AS average_price, max(price) AS max_price, min(price) AS min_price
FROM person_order
         INNER JOIN menu ON menu.id = person_order.menu_id
         INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY 1
ORDER BY 1;
