SELECT table_1.name AS person_name1,
	   table_2.name AS person_name2,
	   table_1.address AS common_address
FROM person AS table_1
INNER JOIN person AS table_2
ON table_1.address = table_2.address
WHERE table_1.id > table_2.id
ORDER BY 1, 2, 3;
