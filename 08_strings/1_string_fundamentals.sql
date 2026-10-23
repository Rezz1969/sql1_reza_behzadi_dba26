-- concatenation
SELECT
    ' hello' || ' ' || 'oracle' AS concat_operator,
    CONCAT( 'hello', ' ', 'oracle') AS concat_func,
    'total: ' || 42 AS implicit_type_conversion,
    '' AS null_col;

-- string functions

-- case function and length
SELECT
    UPPER('oracle sql'),
    LOWER('ORACLE Sql'),
    INITCAP('oracle sql'),
    LENGTH('oracle');

-- extract substrings
SELECT 
    SUBSTR(s, 1,6) AS first_six,
    SUBSTR(s, 3) AS from_three,
    SUBSTR(s, -3) AS last_three
FROM
    (SELECT 'Oracle SQL' AS s);


-- searching with INSTR (in string)
SELECT
    INSTR ('idempotent operation', 'operation') AS first_occ;

EXIT
