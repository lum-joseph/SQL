-- Handling SQL dates

-- "DATEPART" syntax --


-- "DATEADD" syntax --
-- note: can use the following to split the date column into day, month, year columns
DATEPART(DAY, date_column) 'renamed_column_header1'
DATEPART(MONTH, date_column) 'renamed_column_header2'


--- Sample SQL script: ---
SELECT DATEPART(DAY, dateBought) 'day',
DATEPART(MONTH, dateBought) 'month',
name
FROM items
WHERE dateBought BETWEEN (@date) AND DATEADD(m,1,@date)