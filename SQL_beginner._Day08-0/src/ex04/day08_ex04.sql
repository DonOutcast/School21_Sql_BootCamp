-- first session
BEGIN TRANSACTION ISOLATION LEVEL Serializable;				--1
SELECT * FROM pizzeria;										--3
SELECT * FROM pizzeria;										--6
COMMIT WORK;												--7
SELECT * FROM pizzeria;										--8



-- second session
BEGIN TRANSACTION ISOLATION LEVEL Serializable;				--2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';	--4
COMMIT WORK;												--5
SELECT * FROM pizzeria;										--9
