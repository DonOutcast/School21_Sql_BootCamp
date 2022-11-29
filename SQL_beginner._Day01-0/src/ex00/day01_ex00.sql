SELECT id AS object_id, name AS object_name FROM person
UNION ALL  SELECT id, pizza_name FROM menu ORDER BY object_name;
