-- first session
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;			--1
SELECT SUM(rating) FROM pizzeria;							--3
SELECT SUM(rating) FROM pizzeria;							--6
COMMIT WORK;												--7
SELECT SUM(rating) FROM pizzeria;							--8



-- second session
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;			--2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';	--4
COMMIT WORK;												--5
SELECT SUM(rating) FROM pizzeria;							--9

