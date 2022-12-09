CREATE OR REPLACE FUNCTION fib(f integer) 
RETURNS SETOF integer
LANGUAGE SQL
AS $$
WITH RECURSIVE t(a,b) AS (
        VALUES(0,1)
    UNION ALL
        SELECT greatest(a,b), a + b as a from t
        WHERE b < $1
   )
SELECT a FROM t;
$$;
