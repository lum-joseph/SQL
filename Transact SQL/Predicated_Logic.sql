-- Select the correct database
USE TSQL 

-- filter between 2 dates e.g. years -----------------------------------------------------------
-- SQL syntax is portable with other SQL database servers
SELECT *
FROM Sales.Orders
WHERE year(orderdate)>=2006 AND year(orderdate)<=2008


-- SQL syntax only available in SSMS
SELECT *
FROM Sales.Orders
WHERE year(orderdate) BETWEEN 2006 AND 2008


-- Manual multiple conditions filtering ------------------------------------------------------
SELECT *
FROM Sales.Orders 
WHERE shipcountry='France' or shipcountry='Belgium' or shipcountry='Brazil'

-- multiple filtering
-- non-compliant with SQL standard. will only work in SSMS
SELECT *
FROM Sales.Orders 
WHERE shipcountry IN ('France','Belgium','Brazil','Germany')

-- group by and multiple filtering
SELECT shipcountry as 'Ship Country', COUNT(orderid) as 'Order Count'
FROM Sales.Orders 
GROUP BY shipcountry
HAVING shipcountry IN ('France','Belgium','Brazil','Germany');



-- Column expression manipulation with functions -----------------------------------------
-- IIF is immediate if function -- only can use in SSMS 2016 or later
-- use IIF when there are 2 expression to evaluate

SELECT productid, productname, discontinued,
IIF(discontinued=0, 'Inactive', 'Active') as 'Status'
FROM Production.Products


-- select case (switch statements) -----
-- when using a much older version of SSMS
-- evaluating multiple conditions 

SELECT productid, productname, discontinued,
    (CASE
	  WHEN discontinued=0 THEN 'Inactive'
	  WHEN discontinued=1 THEN 'Active'
    END) as Status
FROM Production.Products

-- alternative case function but end off with ELSE 
SELECT productid, productname, discontinued,
    (CASE
	  WHEN discontinued=0 THEN 'Inactive'
	  ELSE 'Active'
    END) as Status
FROM Production.Products