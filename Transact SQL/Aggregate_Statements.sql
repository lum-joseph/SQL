-- Select the correct database
USE TSQL 

select productid, productname, unitprice
from Production.Products

-- multiple aggregation
select MAX(unitprice) as MostExpensive, 
    MIN(unitprice) as MostAffordable,
    SUM(unitprice) as  'Total Cost'
from Production.Products



-- using groupby --------------------------------------------------------------------------
select supplierid, max(unitprice) as MostExpensive, min(unitprice) as MostAffordable
from Production.Products
group by supplierid

select supplierid, min(unitprice) as MostAffordable
from Production.Products
group by supplierid


-- group by with aggregation & filtering
SELECT orderid, SUM(unitprice*qty) as 'Total Revenue'
FROM Sales.OrderDetails
GROUP BY orderid
HAVING SUM(unitprice*qty) > 2000
ORDER BY orderid ASC