use tsql

SELECT orderid, Cust.custid, orderdate, shipcountry,
 contactname, address, city
 FROM sales.customers AS Cust 
 INNER JOIN sales.orders AS Ord ON Cust.custid = Ord.custid 
 ORDER BY cust.custid
	-- PARENT table: sales.customers
	-- CHILD table: sales.orders 

-- When you join, identify the PARENT and CHILD table
	-- PARENT table will not have duplicates
	-- CHILD table has duplicates, multiple entries


SELECT orderid, Cust.custid, orderdate, shipcountry,
 contactname, address, city
 FROM sales.customers AS Cust 
 LEFT JOIN sales.orders AS Ord ON Cust.custid = Ord.custid 
 ORDER BY cust.custid