WITH RECURSIVE t AS (
    SELECT node_1 AS begin_tour, node_1, node_2, cost, cost AS sum_cost, 1 AS iter FROM roads WHERE node_1 = 'a'
    UNION
    SELECT CONCAT(t.begin_tour, ',', t.node_2), roads.node_1, roads.node_2, roads.cost, sum_cost + roads.cost, iter + 1 FROM roads
        JOIN t ON roads.node_1 = t.node_2 AND roads.node_1 != t.node_1
    WHERE iter < (SELECT COUNT(DISTINCT roads.node_1) - 1 FROM roads) AND strpos(CONCAT(t.begin_tour, ',', t.node_2), roads.node_2) = 0),
     all_tour AS (
         SELECT sum_cost + roads.cost as total_cost, CONCAT('{', t.begin_tour, ',', roads.node_1, ',', roads.node_2, '}') AS tour FROM roads
         JOIN t ON t.node_2 = roads.node_1 AND roads.node_1 != t.node_1
         WHERE roads.node_2 = 'a' AND t.iter = (SELECT COUNT(DISTINCT roads.node_1) - 1 FROM roads)
     ORDER BY total_cost, tour)

SELECT * FROM all_tour;

