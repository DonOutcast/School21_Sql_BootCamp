
SELECT p.address, round(MAX(p.age) - CAST(MIN(p.age) AS DEC(6, 2)) / MAX(p.age), 2) formula, round(AVG(p.age), 2) average,
	'formula' > 'average' comparison
FROM person p
GROUP BY 1
ORDER BY 1;
