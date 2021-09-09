
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

/****** Object:  Table [dbo].[EmployeeProfile]    Script Date: 9/8/2021 9:21:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeProfile](
	[employeid] [int] NOT NULL,
	[employeename] [nvarchar](50) NULL,
	[employeetype] [nvarchar](50) NULL,
	[salary] [money] NULL
) ON [PRIMARY]
GO