WITH t1 AS (SELECT *
		   	FROM person_visits
		   	WHERE (person_id = 1 OR person_id = 2)
		   	AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
		   )
SELECT CAST(list AS DATE) AS missing_date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') list
LEFT JOIN t1
ON list = t1.visit_date
WHERE t1.visit_date IS NULL
ORDER BY missing_date ASC;
