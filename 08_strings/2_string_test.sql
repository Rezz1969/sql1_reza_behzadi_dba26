-- concatenation
SELECT
    42,
    'hej DBA26' AS greet,
    'SQL' || ' is the language of relational database' || ':)' AS concatenation,
    CONCAT('hello', 'oracle') AS conc_func;

-- string functions and subquery
SELECT
    s AS original,
    UPPER(s),
    LOWER(s),
    INITCAP(s),
    LENGTH(s)
FROM (SELECT 'OraCle sQL' AS s);

-- substrings extraction
SELECT
    s,
    SUBSTR(s, 1,3) AS first_six, 
    SUBSTR(s,7) AS from_seven,
    substr(s, -4) AS last_four
FROM (SELECT 'Oracle SQL on Oracle26ai' AS s);


--INSTR - searching
SELECT
    INSTR('idempotent operation', 'operation') AS first_occurance,
    INSTR('banana', 'an', 1,2) AS second_occ,
    SUBSTR('cool@evilcorp.com', INSTR('cool@evilcorp.com', '@')+1) AS domain;

-- clean a string
SELECT
    s,
    TRIM(s),
    LTRIM(s),
    RTRIM(s),
    INITCAP(s),
FROM (SELECT '           HellU      ORacCleX          ' AS s);

EXIT

