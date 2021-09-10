-- Handling NULL Values with SQL
	-- there is no SQL function to check entire table for NULLS -> only can check null within each column
	-- you can write your own functions to check for NULLS

-- Select the correct database
USE AdventureWorks
GO

-- using ISNULL() Function
	SELECT businessentityid, title,
		firstname +' '+ ISNULL(MiddleName,'') +' '+ LastName AS fullname
	FROM Person.Person
	ORDER BY fullname

		-- some employee do not have middlename >> leading to concatenation being NULL
		-- use function ISNULL(<column_name>, replacement_value)
		-- if you dont use ISNULL() function --> fullname concat will be blank


-- using "IS NULL" or "IS NOT NULL"
	-- note: cannot use = NULL as equality is only for non-null values
	SELECT * 
	FROM Person.Person
	WHERE MiddleName IS NULL