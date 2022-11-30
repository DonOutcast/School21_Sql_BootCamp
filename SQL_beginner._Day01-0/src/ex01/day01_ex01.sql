SELECT name AS object_name FROM person
UNION ALL
SELECT pizza_name AS object_name FROM menu
ORDER BY object_name;
