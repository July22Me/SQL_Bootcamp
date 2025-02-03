CREATE OR REPLACE FUNCTION 
fnc_fibonacci(num INTEGER DEFAULT 10)
    RETURNS TABLE(fibbonachi INTEGER) AS
$$
WITH RECURSIVE fib AS (
    SELECT 0 AS prev_num, 1 AS next_num
    UNION ALL 
    SELECT next_num as prev_num, prev_num+next_num as next_num FROM fib
    WHERE next_num < num
)
SELECT prev_num FROM fib;
$$
LANGUAGE SQL;
SELECT * FROM fnc_fibonacci(100);
SELECT * FROM fnc_fibonacci();
