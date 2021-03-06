# SQL

- Create table (PK, FK, Null)
- Alter table
- Add default constraints, remove constraints
- Check constraint (range of values, negative values)
- Remove rows through referential integrity checks (check dependencies no action, default, cascade, null)
- Set identity column (seed, increment)
- Primary key and Unique key constraints
    - Every table can have only one PK, but can have more than one unique keys
    - Primary key does not allow nulls, where as unique key allows one null.
- **SELECT** statement
- **GROUP BY** statement
- **JOINS**
    - *Inner join*
    - *Outer join*
        - *Left join, right join, full join*
    - *Cross join*
      - A cross join cannot have ON clause, as it joins on every record
    - Difference between full join and cross join
      - #records in table1 is 10, #records in table2 is 4
      - full join produces table with matching + non-matching rows from left and right tables) 10 + 4 = 14 records
      - outer join produces table with 10 * 4 = 40 records
    - Intelligent joins (non matching rows from tables)
    - *Self join*
      - Join table with itself
        - Inner self join
        - Outer self join (Left, Right, Full)
        - Cross self join
- Replace NULL values
    - Use ISNULL(column_name, 'replacement_value')
    - Use COALESCE(column_name, 'replacement_value') function (Returns first non-NULL value)
    - Use (CASE WHEN column_name is NULL THEN 'replacement_value') statement
- **COALESCE function**
    - Returns first non-null value within a record
- **UNION and UNION ALL**
    - UNION join records from tables containing same column names, same data types, and same number of columns
    - UNION removes duplicate rows, where as UNION ALL does not
    - UNION has to perform distinct sort to remove duplicates, which makes it less faster than UNION ALL
- UNION combines records in tables, where as JOIN combines columns in tables
- **Views**
  - *Advantages*
    - Views can be used to reduce the complexity of the database schema
    - Views can be used as a mechanism to implement row and column level security
    - Views can be used to present aggregated data and hide detailed data
    - To modify a view - ALTER VIEW statement
    - To Drop a view - DROP VIEW vWName
- **Stored procedure**
    - It is a group of T-SQL statements. A stored procedure can be used to save a specific query and call it by it's name.
    - Microsoft recommends **against** using `sp_` prefix as it is allocated for system stored procedures.
    - Stored procedure with parameters
    - ALTER, DELETE stored procedure
    - Stored procedure with encryption
    - Stored procedures with output parameters
    - System store procedures
        - `sp_help procedure_name`
            - View information about the stored_procedure such as parameter names, data types. Can be used with any database objects such as tables, views, SPs, triggers etc.
        - `sp_helptext procedure_name`
            - View the text of a stored procedure
        - `sp_depends procedure_name`
            - View stored procedure dependencies for a table, check if there are any stored procedures that are referencing a table that you are about to drop.




















## References

- [Link 1](http://csharp-video-tutorials.blogspot.com/p/free-sql-server-video-tutorials-for.html)
- [Link 2](https://en.wikipedia.org/wiki/Database#Database_management_system)