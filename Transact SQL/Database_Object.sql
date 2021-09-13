USE TSQL

-- Views are READ ONLY 
	-- linked ot underlying tables
	-- when you refresh database or move it to another location, it will also be backedup

CREATE VIEW listofemployees AS
SELECT *
FROM HR.Employees

-- include "WITH encryption" to prevent others from editing the design of your view
	-- note: cannot remove encryption. have to ALTER entire view and edit it without encryption first
	-- view cannot use parameters

	ALTER VIEW listofemployees 
	WITH encryption AS
	SELECT *
	FROM HR.Employees

-- after creating a view, you can reference to it like a table

SELECT *
FROM listofemployees

-------------------------------------------------------------------------------
-- creating another Table VIEW
	CREATE VIEW employeesubset AS
	SELECT empid, lastname, firstname, title
	FROM HR.Employees

	SELECT * 
	FROM employeesubset

------------------------------------------------------------------------------

-- stored procedures are meant to be executed (run the actions)
CREATE PROCEDURE updatescores AS
	BEGIN
	UPDATE [Stats].[Scores]
		SET score = 100
		WHERE testid='TEST ABC'
	END

-- Execute the PROCEDURE
EXEC updatescores

-- to delete a PROCEDURE
DROP PROCEDURE updatescores
EXEC updatescores


SELECT *
FROM Stats.Scores


----------------------------------------------------------------------------------------

-- create a more flexible procedure 
	-- parameters start with the @ symbols
ALTER PROCEDURE updatescores @score int, @testid varchar(25)
AS 
	BEGIN
	UPDATE [Stats].[Scores]
		SET score = @score
		WHERE testid= @testid
	END


-- change all the test id xyz to score of 65
	Exec updatescores 65, 'TEST XYZ'

-- run to see the output results 
	SELECT *
	FROM Stats.Scores
	
	
