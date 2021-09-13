-- Connecting to multiple database

	-- Default: cannot use existing log-in to connect to an external datasource. prevent your server from being exposed to vulnerabilities 
	-- Require high priviledge to run on SQL server


sp_configure 'show advanced options', 1;
RECONFIGURE;
GO

sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;
GO

-- retrieves data from another SQL server
	-- database driver: 'SQLNCLI'
	-- can connect to Oracle or microsoft excel --> use diff driver
SELECT d.*
FROM OPENROWSET('SQLNCLI', 'Server=mia-sql\sql2;Trusted_Connection=yes;',
                            master.dbo.spt_monitor) AS d;

-- there maybe double hopping issues ==> OPENROWSET() will not run
	-- before the SQL can find the dataset it has to go to another server
	-- only the developer admin on the server can fix this issue