# Notes on TSQL using SSMS
Compiled by Joseph Lum

## Overview
SSMS usings SQL99 standard which has more functions than ANSI-89 Syntax which is used by other SQL platforms. Documentation can be readily found on Google. 

The ANSI standards — which cover retrieval, manipulation, and management of data in commands, such as SELECT, JOIN, ALTER TABLE, and DROP — formalized many SQL behaviors and syntax structures across a variety of products. These standards become even more important as open source database products, such as MySQL, miniSQL, and PostgreSQL, grow in popularity and are developed by virtual teams rather than large corporations.

#### Basic Syntax for SQL
```SQL
USE <database name>
SELECT <columns, *>
FROM <table_name, views>
WHERE <Logical Expression, Boolean Expression>
```

#### Aggregation Syntax for SQL
```SQL
USE <database name>
SELECT <columns, *> <Column Manipulation>
FROM <table_name, views> <JOINS>
GROUP BY <column name(s)>
HAVING <Logical Expression, Boolean Expression>
```

#### Overview of SQL on SSMS
![image](https://user-images.githubusercontent.com/89778617/132669416-584ece21-45f2-42b2-8c73-52dfbf44405b.png)


#### Types of Joins
There are 3 main types of JOINS used in SQL
1.	INNER JOIN\
      a.	Only shows entries found in both tables. 
2.	Outer Joins\
      a.	LEFT JOIN\
      b.	RIGHT JOIN
3.	Cross Join (Cartesian Join)\
      a.	Get all the records from both tables. Includes all possible combinations.

Note: Default "JOIN" is an "INNER JOIN"

![image](https://user-images.githubusercontent.com/89778617/132785560-83652450-de66-434a-8e73-cf583271043d.png)

## Useful Functions
#### NULL Handling
```SQL
COALESCE ( check_expression , replacement_value )  

ISNULL(<column_name>, replacement_value)
```
#### Concat function
Use concat instead of + when trying to concatenate a few columns. Concat will account for NULL values
```SQL
CONCAT(<column_name>, ‘, ’, <column_name2>, ‘, ’, <column_name3>)
```
#### Changing Data Types
```SQL
CAST( <column_name> AS data_type )

CONVERT( data_type, <column_name>, style) 
```

## List of Acronymns
| Acronymns  | Description |
| :--------: | :-------- |
| SQL  | Structured Query Language  |
| TSQL  | Transact-SQL  |
| SSMS  | SQL Server Management Studio  |


## Microsoft SQL server Management Studio UI
User interface of SSMS. It was a life saver, having all the script saved under 1 solution. 

![image](https://user-images.githubusercontent.com/89778617/133094392-bf2db535-1087-4596-97cc-2a590847bdc1.png)

| Object  | Parent | Description |
| :--------: |:--------: | :-------- |
| Solution	| - |A solution is a conceptual container for projects. Solutions have a .ssmssln extension, and are always displayed at the top of the hierarchy. |
| Project | Solution | Projects contain queries (T-SQL scripts), database connection metadata, and other miscellaneous files. You can file any number of projects within a solution. Projects have a .ssmssqlproj extension.
|Script | Project | T-SQL script files with a .sql extension are the basic files used to work with SQL Server.

## Sources
- Microsoft Course notes (20761C - Querying Data with Transact-SQL)
- Course notes on [Graeme Malcolm GitHub](https://github.com/MicrosoftLearning/QueryingT-SQL)
- SQL in a nutshell [online website](https://www.oreilly.com/library/view/sql-in-a/1565927443/ch01s03.html)
