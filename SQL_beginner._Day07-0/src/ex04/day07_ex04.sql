SELECT name, COUNT(person_id) AS count_of_visits
FROM person_visits
         INNER JOIN person ON person.id = person_visits.person_id
GROUP BY 1 HAVING COUNT(person_id) > 3;
