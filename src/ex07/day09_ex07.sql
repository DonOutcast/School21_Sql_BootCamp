CREATE OR REPLACE FUNCTION fnc_mleast(VARIADIC arr numeric[])
    RETURNS numeric
AS
$$
SELECT MIN(arr[i])
FROM generate_subscripts(arr, 1) g(i);
$$ LANGUAGE sql;

SELECT fnc_mleast(VARIADIC arr => ARRAY [10.0, -1.0, 5.0, 4.4]);
