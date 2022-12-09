--Session1;
BEGIN; --starting a transation 
UPDATE pizzeria set rating = 5 WHERE name = 'Pizza Hut'; -- changing data 

SELECT * FROM pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
-- rating = 5
COMMIT WORK; --setting the transaction 

--Session2;
--Before Commit
SELECT * FROM pizzeria WHERE name  = 'Pizza Hut'; 
--rating = 4.6
--After Commit 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
--rating = 5
