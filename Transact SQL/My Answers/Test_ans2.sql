USE TSQL

-- Qns 2.1
SELECT *
FROM Sales.OrderDetails
WHERE orderid = (SELECT MAX(orderid) FROM Sales.OrderDetails)
-- Alternative ans

SELECT * FROM
	(SELECT A.orderid, A.orderdate FROM Sales.Orders AS A
	LEFT JOIN Sales.OrderDetails AS B
	ON A.orderid = B.orderid) Main_Table
	INNER JOIN
	(SELECT orderid, MAX(orderdate) AS Max_date FROM Sales.Orders
	GROUP BY orderid) Date_Table
	ON Main_Table.orderdate = Date_Table.Max_date 



-- Qns 2.2

SELECT *
FROM Sales.Orders as o
LEFT JOIN Sales.OrderDetails as od ON od.orderid = o.orderid
WHERE custid IN (
	SELECT custid FROM Sales.Customers
	WHERE country IN ('Germany')
	);
