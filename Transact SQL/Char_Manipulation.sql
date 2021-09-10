USE TSQL

select format(max(qty*unitprice), 'C', 'en-us') as Revenue from
sales.orderdetails

select orderid, format(max(qty*unitprice), 'C', 'en-us') as Revenue from
sales.orderdetails
group by orderid

select empid, firstname, SUBSTRING(phone, CHARINDEX(')',phone)+ 1, LEN(phone)) from hr.employees

select empid, firstname, 
REPLACE(REPLACE(REPLACE(phone,'-',''), '(', ''), ')', '')
from hr.employees


---------------------------------------------------------------
SELECT SUBSTRING('Microsoft SQL Server',11,3) AS Result;
	-- output Result: SQL
SELECT LEFT('Microsoft SQL Server',9) AS left_example, RIGHT('Microsoft SQL Server',6) as right_example;
	-- output left_example: Microsoft
	-- right_example: Server

SELECT LEN('Microsoft SQL Server     ') AS [LEN];
	-- output LEN: 20

SELECT DATALENGTH('Microsoft SQL Server     ') AS [DATALENGTH];
	-- output DATALENGTH: 25

SELECT CHARINDEX('SQL','Microsoft SQL Server') AS Result;

SELECT REPLACE('Learning about T-SQL string functions','T-SQL','Transact-SQL') AS Result;

SELECT UPPER('Microsoft SQL Server') AS UP, LOWER('Microsoft SQL Server') AS LOW;