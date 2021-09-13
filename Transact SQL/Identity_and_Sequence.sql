/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [CorporateDB]
GO

/****** Object:  Table [dbo].[EmployeeProfile]    Script Date: 9/12/2021 6:52:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeProfile](
	[employeid] [int] IDENTITY(1001,1) NOT NULL,
	[employeename] [nvarchar](50) NULL,
	[employeetype] [nvarchar](50) NULL,
	[salary] [money] NULL,
 CONSTRAINT [PK_EmployeeProfile] PRIMARY KEY CLUSTERED 
(
	[employeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EmployeeProfile]  WITH CHECK ADD  CONSTRAINT [CK_EmployeeProfile_SalaryValidation] CHECK  (([salary]>(0)))
GO

ALTER TABLE [dbo].[EmployeeProfile] CHECK CONSTRAINT [CK_EmployeeProfile_SalaryValidation]
GO

------------------------------------------------------------------------------------------------------


use tsql

CREATE TABLE dbo.MyTable  
(  
    IDColumn NVARCHAR(25) PRIMARY KEY,  
    name VARCHAR(25) NOT NULL  
) ;  
GO  

-- sequence stored as a PROGRAMMING OBJECT in SQL server
	-- <database name> --> Programmability --> Sequences
CREATE SEQUENCE dbo.CounterSeq  
    AS INT  
    START WITH 1001  
    INCREMENT BY 1 ;  
GO  

-- adding another contraint such as prefix with sequence obj  
ALTER TABLE dbo.MyTable  
    ADD   
        DEFAULT N'AdvWorks_' +   
        CAST(NEXT VALUE FOR dbo.CounterSeq AS NVARCHAR(20))   
        FOR IDColumn;  
GO  

 -- add first 2 records 
INSERT dbo.MyTable (name)  
VALUES ('Eva'),
('Robert')
 ;  
GO  

-- add another 2 more records
INSERT dbo.MyTable (name)  
VALUES ('Michael'),
('Luis')
 ;  
GO  

-- Run following to see newly created table with its contraints & auto generated IDColumn
SELECT * FROM dbo.MyTable;  
GO

-- Sample of the output
	IDColumn, Name
	'AdvWorks_1001', 'Eva'
	'AdvWorks_1002', 'Robert'