SET enable_indexscan = ON;
SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT pizza_name, name AS pizzeria_name
FROM menu
         LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id;

