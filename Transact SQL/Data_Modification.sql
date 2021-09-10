-- SQL to insert information into table

-- insert 2 records into the table CorporateDB

	USE [CorporateDB]
	GO

	INSERT INTO [dbo].[EmployeeProfile]
			   ([employeid]
			   ,[employeename]
			   ,[employeetype]
			   ,[salary])
		 VALUES
			   (1001
			   ,'Michael Shephard'
			   ,'Regular'
			   ,20000.00),

			   (1002
			   ,'Eva Longoria'
			   ,'Temporary'
			   ,20000.00),

			   (1003
			   ,'Eric Michales'
			   ,'Contract'
			   ,30000.00)

			   /*
			   (2003
			   ,'Steven Spielberg'
			   ,'Regular'
			   ,10500.00),

			   (2004
			   ,'Marcus Fenix'
			   ,'Temporary'
			   ,12500.00)
			   */
	GO

--------------------------------------------------------
-- see the new additions
SELECT * 
FROM dbo.EmployeeProfile
-------------------------------------------------------

-- Update statement
 -- edit records to update the details

	USE [CorporateDB]
	GO

	UPDATE [dbo].[EmployeeProfile]
	   SET [employeetype] = 'Regular'
		  ,[salary] = 30000.00
	 WHERE employeid = 1002
	GO


-- Delete records
-- do not do this on production server / UAT server
	USE [CorporateDB]
	GO

	DELETE FROM [dbo].[EmployeeProfile]
		  WHERE employeid = 1001
	GO

-------------------------------------------------------------------

-- TRANSACTION to ensure entire code works otherwise dont run it
	-- allows users to undo
	-- Step 1: Run "Bring Transaction"
	-- Step 2: Run your code to make changes
	-- Step 3: If you want to undo, run "rollback"
	-- Step 4: No more change, run "Commit"
	
	Begin Transaction
	-- < SQL script to make changes >
	rollback

	Commit