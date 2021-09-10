USE TSQL
GO

-- using CAST(expression AS datatype(length))

	SELECT orderid, custid, CAST(orderdate AS DATE) AS 'Order Date'
	FROM Sales.Orders


-- using CONVERT(data_type(length), expression, style)
	-- style is Optional. The format used to convert between data types, such as a date or string format.
	-- style 103 is british standard
	
	SELECT orderid, custid, CONVERT(varchar, orderdate, 103) AS 'Order Date'
	FROM Sales.Orders

----------------------------------------------------------------------------

Use string functions in a query
-- FORMAT
DECLARE @m money = 120.595
SELECT @m AS unformatted_value, 
	FORMAT(@m,'C','zh-cn') AS zh_cn_currency,
	FORMAT(@m,'C','en-us') AS en_us_currency,
	FORMAT(@m,'C','de-de') AS de_de_currency;
-- end FORMAT example
USE TSQL
SELECT * FROM Sales.OrderDetails

SELECT FORMAT(max(qty*unitprice),'C', 'en-us') AS Revenue
FROM Sales.OrderDetails

SELECT orderid, FORMAT(max(qty*unitprice),'C', 'en-us') AS Revenue
FROM Sales.OrderDetails
GROUP BY orderid




