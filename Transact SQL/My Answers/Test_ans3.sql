-- Qns 3.1

CREATE VIEW SalesView
WITH encryption AS
	SELECT productid as ProductID, unitprice as UnitPrice, SUM(qty) as OrderQty
	FROM Sales.OrderDetails
	GROUP BY productid, unitprice
	HAVING unitprice > 50

-- Qns 3.2

SELECT *
FROM SalesView
ORDER BY UnitPrice DESC