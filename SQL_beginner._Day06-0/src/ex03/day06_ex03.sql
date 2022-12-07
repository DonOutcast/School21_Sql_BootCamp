CREATE UNIQUE INDEX IF NOT EXISTS idx_person_discounts_unique
ON person_discounts(person_id, pizzeria_id);

SET enable_seqscan = off;
EXPLAIN ANALYSE
SELECT * FROM person_discounts
WHERE person_id = 3 AND pizzeria_id = 2;
