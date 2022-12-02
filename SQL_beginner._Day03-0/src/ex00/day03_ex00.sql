SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date
FROM menu
JOIN person_visits
ON person_visits.pizzeria_id = menu.pizzeria_id AND person_visits.person_id = 3
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
WHERE price >= 800 AND price < 1000
ORDER BY 1,2,3;
