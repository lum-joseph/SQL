-- Reference to the correct database 
use CorporateDB

SELECT employeid, employeename, salary
FROM EmployeeProfile

SELECT *
FROM EmployeeProfile
WHERE employeid = 1001

-- querying from larger datasets & filter 
use TSQL
SELECT *
FROM Sales.OrderDetails
WHERE orderid = 10248

SELECT *
FROM Sales.OrderDetails
WHERE qty > 10


-- select statement with multiple conditions (and, or) ------------------------------------
SELECT *
FROM Sales.OrderDetails
WHERE orderid = 10248 AND qty > 10


-- only extract the date from column ------------------------------------------
select *,cast(orderdate as DATE) as 'Order date'
from sales.Orders
order by orderdate desc, orderid


-- filtering with 2 different conditions
select orderid as 'Order No.', productid as 'Product No.', unitprice as 'Unit Price', qty as 'Quantity'
from Sales.OrderDetails
where orderid = 10248 or qty > 10
order by orderid


-- multiplication across columns ----------------------------------------------
SELECT orderid, productid, unitprice, qty, 
    (unitprice*qty) as salesrevenue
FROM Sales.OrderDetails


-- dataset from HR table to do concatenation ------------------------------------
select empid, firstname, lastname, title
from HR.Employees

select empid, (firstname+' '+lastname) as 'Full Name', title
from HR.Employees