-- Joseph SQL notes
-- source (free): https://www.w3schools.com/sql/
-- note: SQL syntax is not case sensitive

SELECT DISTINCT column1, column2, ...
FROM table_name;
WHERE condition;
ORDER BY column1, column2, ... ASC|DESC;


-- "Where" condition options --
WHERE condition1 OR condition2
WHERE condition1 AND condition2
WHERE NOT condition;
WHERE column_name IS NULL;
WHERE column_name IS NOT NULL;


-- "INSERT INTO" syntax --
INSERT INTO table_name (column1, column2, column3, ...)
VALUES ('value1', 'value2', 'value3', ...);


-- "UPDATE" syntax --
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;


-- "DELETE" syntax --
DELETE FROM table_name 
WHERE condition;


---------------------------------------------------
-- This section is on functions --


-- SELECT TOP, LIMIT, FETCH FIRST syntax --
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

-------- examples
SELECT TOP 3 * FROM Customers;
SELECT * FROM Customers LIMIT 3;
SELECT TOP 50 PERCENT * FROM Customers;



-- "MIN" or "MAX" function syntax --
SELECT MIN(column_name)
FROM table_name
WHERE condition;

SELECT MAX(column_name)
FROM table_name
WHERE condition;


-- "COUNT()", "AVG()" and "SUM()" Functions syntax --
SELECT COUNT|AVG|SUM(column_name)
FROM table_name
WHERE condition;


-- "LIKE" and "NOT LIKE" syntax --
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;
-- can be used with '%' and '_' wildcards

----------------------------------------------------

-- Wild cards
'%'
'_'
'[abcd]' -- anything that has a,b,c,d 
'[a-d]' -- anything between a to d 


-- "IN" or "NOT IN" syntax -- 
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);


-- "BETWEEN" or "NOT BETWEEN" syntax -- 
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
-- note: if value1 and value2 are strings, it will return column values alphabetically between them
-------- examples 
BETWEEN #07/01/1996# AND #07/31/1996#;
BETWEEN '1996-07-01' AND '1996-07-31';


-- Alias for renaming --
-- note: Rename column header or table name
SELECT column_name AS alias_name
FROM table_name;

SELECT column_name(s)
FROM table_name AS alias_name;

-- examples of a SQL statement creating an alias named "Address" that combine four columns (Address, PostalCode, City and Country)
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;



-- JOINTS to merge multiple tables -- 
-- // (INNER) JOIN: Returns records that have matching values in both tables
-- // LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- // RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- // FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

-- note: "FULL OUTER JOIN" and "FULL JOIN" are the same


-- "UNION" and "UNION ALL" syntax --
-- note: The "UNION" operator selects only distinct values by default. To allow duplicate values, use "UNION ALL"
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;


-- "GROUP BY" syntax --
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

-- "HAVING" syntax --
-- used for filtering conditions on aggregate functions
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);