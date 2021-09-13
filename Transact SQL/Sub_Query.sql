USE TSQL

SELECT *
FROM Sales.Orders
WHERE orderid = 11077

SELECT MAX(orderid)
FROM Sales.Orders

-- Sub query
SELECT *
FROM Sales.Orders
WHERE orderid = (SELECT MAX(orderid) FROM Sales.Orders)

------------------------------
-- alternative solution 
	SELECT TOP(1)*
	FROM Sales.Orders
	ORDER BY orderid DESC

-- Using Sub-Query 
SELECT *
FROM Sales.OrderDetails
WHERE orderid IN (
	SELECT DISTINCT orderid
	FROM Sales.Orders
	WHERE shipcountry IN ('France', 'Brazil')
	)

-- using JOIN statement instead of sub query

	SELECT od.orderid, od.productid, od.unitprice, od.qty, od.discount, o.shipcountry
	FROM Sales.OrderDetails as od 
		INNER JOIN Sales.Orders o ON od.orderid = o.orderid
	WHERE shipcountry IN ('France', 'Brazil')



-- EXIST or NOT EXIST == only can use on subquery

	SELECT custid
	FROM Sales.Customers 
	WHERE EXISTS (
		SELECT custid
		FROM Sales.Customers
		)
		

-----------------------------------------------------------------------------
-- Sub-query in the SELECT and also in the filtering WHERE


SELECT orderid, productid, unitprice,
	(SELECT shipcountry FROM Sales.Orders
	WHERE orderid = OD.orderid) AS destinationcountry
FROM Sales.OrderDetails AS OD
WHERE orderid IN (
	SELECT DISTINCT orderid
	FROM Sales.Orders
	WHERE shipcountry IN ('France', 'Brazil')
	)

