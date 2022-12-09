SELECT  person_id, COUNT(*) AS count_of_visits
FROM person_visits
GROUP BY 1
ORDER BY count_of_visits DESC, person_id ASC;
