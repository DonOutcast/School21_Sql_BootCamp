SELECT id FROM menu
WHERE id NOT IN (SELECT menu_id FROM person_order)
ORDER BY 1;
