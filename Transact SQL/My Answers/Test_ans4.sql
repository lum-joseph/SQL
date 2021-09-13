USE AdventureWorks

SELECT *
FROM HumanResources.Employee


-- create a more flexible PROCEDURE 
	-- parameters start with the @ symbols

CREATE PROCEDURE updateEmpl @JobTitle nvarchar(50), @HireDate DATE, @CurrentFlag Flag:Bit, @BusinessEntityID int
WITH encryption AS 
	BEGIN
	UPDATE [HumanResources].[Employee]
		SET JobTitle = @JobTitle,
			HireDate = @HireDate,
			CurrentFlag = @CurrentFlag
		WHERE BusinessEntityID = @BusinessEntityID
	END

-- drop the procedure
DROP PROCEDURE updateEmpl;
GO

DROP PROCEDURE IF EXISTS updateEmpl;