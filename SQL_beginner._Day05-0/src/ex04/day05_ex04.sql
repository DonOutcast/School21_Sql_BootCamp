CREATE UNIQUE INDEX IF NOT EXISTS idx_menu_unique
			ON menu(pizzeria_id, pizza_name);

SET enable_seqscan = OFF;
EXPLAIN ANALYSE

SELECT pizzeria_id, pizza_name
		FROM menu
		WHERE pizzeria_id > 0;
