INSERT INTO menu
VALUES ((SELECT MAX(id) + 1 FROM menu),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'), 'sicilian pizza', 900);
