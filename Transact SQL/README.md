# Notes on TSQL using SSMS
Compiled by Joseph Lum

#### Overview
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
There are 3 main types of JOINS used in SQL\
1.	INNER JOIN
      a.	Only shows entries found in both tables. 
2.	Outer Joins
      a.	LEFT JOIN
      b.	RIGHT JOIN
3.	Cross Join (Cartesian Join)
      a.	Get all the records from both tables. Includes all possible combinations.

Note: Default "JOIN" is an "INNER JOIN"\

![image](https://user-images.githubusercontent.com/89778617/132785560-83652450-de66-434a-8e73-cf583271043d.png)


#### List of Acronymns
| Acronymns  | Description |
| :--------: | :-------- |
| SQL  | Structured Query Language  |
| TSQL  | Transact-SQL  |
| SSMS  | SQL Server Management Studio  |


#### Sources
- Microsoft Course notes (20761C - Querying Data with Transact-SQL)
- Course notes on [Graeme Malcolm GitHub](https://github.com/MicrosoftLearning/QueryingT-SQL)
- SQL in a nutshell [online website](https://www.oreilly.com/library/view/sql-in-a/1565927443/ch01s03.html)
