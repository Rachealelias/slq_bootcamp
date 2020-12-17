# Summary

Last time we discussed quite a few concepts regarding SQL, starting from what it stands for, and continuing with some of its clauses, functions, keywords and operators. Review the following document for a more detailed summary.

[Google Doc] ("https://docs.google.com/document/d/15ER6p9ulN7lnVNzNFllb-EF54jX8wiAKt2ASgRtLmoE/edit?usp=sharing")

## What we know

### Database and Table operations

- Create a databse `sqlite3 database_name.db`
- Create tables `CREATE TABLE table_name_pluralized (attribute_1 storage_class, attribute_2 storage_class);`
- Rename tables `ALTER TABLE table_name RENAME TO new_table_name_pluralized;`
- Add columns to tables `ALTER TABLE table_name ADD COLUMN column_name;`
- Rename columns in tables `ALTER TABLE table_name RENAME COLUMN column_name TO new_column_name;`
- Drop tables `DROP TABLE table_name;`

### CRUD actions on tables

- Create: `INSERT INTO table_name (attr1, attr2) VALUES (value1, value2);`
- Read: `SELECT column_name FROM table_name WHERE attr [conditional] attr_value;`  
        `SELECT * FROM table_name WHERE attr [conditional] attr_value;`
- Update: `UPDATE table_name SET column_name = new_value WHERE column_name = old_value;`
- Delete: `DELETE FROM table_name WHERE column_name [conditional] value;`

### Functions and Clauses

Clauses:

- Group By: `SELECT column_name, AVG(column_name) FROM table_name WHERE column_name [condition] value GROUP BY column_name;`
- Order By: `SELECT * FROM table_name ORDER BY(column_name) DESC;`
- Having: `SELECT column_name, AVG(column_name) FROM table_name GROUP BY column_name HAVING AVG(column_name) [condition] value;`
- Where: `SELECT column_name, AVG(column_name) FROM table_name WHERE column_name [condition] value;`
- Limit: `SELECT * FROM table_name ORDER BY(column_name) DESC LIMIT 1;`
- And/Or: `SELECT column_name FROM table_name WHERE column_name [condition] value AND/OR column_name [condition] value;`

Aggregate Functions:

- Sum: `SELECT SUM(column_name) FROM table_name;`
- Avg: `SELECT AVG(column_name) FROM table_name;`
- Min/Max: `SELECT MIN/MAX(column_name) FROM table_name;`
- Count: `SELECT COUNT(column_name) FROM table_name WHERE column_name [condition] value;`

### Keywords

- Distinct: `SELECT DISTINCT column_name FROM table_name WHERE column_name [condition] value;`
- Autoincrement: `CREATE TABLE table_name(column1 INTEGER AUTOINCREMENT, column2 storage_class);`
- As: `SELECT column1, column2 FROM table_name AS alias_name WHERE alias_name [condition] value;`

### Operators

- Arithmetic: `+, -, *, /, %`
- Comparison: `==, !=, >, >=, <, <=, !<, !>, <>`
- Logical: `AND, BETWEEN, EXISTS, IN, NOT IN, LIKE, GLOB, NOT, OR, IS NULL, IS, IS NOT, ||, UNIQUE`

### Joins

SQLite, differently than SQL, only supports three major types of joins:

- The CROSS JOIN: `it matches every row of the first table with every row of the second table. If the input tables have x and y row, respectively, the resulting table will have x*y row. Because CROSS JOINs have the potential to generate extremely large tables, care must be taken to only use them when appropriate.`

- The INNER JOIN (Simple JOIN): `it creates a new result table by combining column values of two tables (table1 and table2) based upon the join-predicate. The query compares each row of table1 with each row of table2 to find all pairs of rows which satisfy the join-predicate. When the join-predicate is satisfied, the column values for each matched pair of rows of A and B are combined into a result row. An INNER JOIN is the most common and default type of join. You can use the INNER keyword optionally.`

- The LEFT OUTER JOIN: `it is an extension of INNER JOIN. Though SQL standard defines three types of OUTER JOINs: LEFT, RIGHT, and FULL, SQLite only supports the LEFT OUTER JOIN. OUTER JOINs have a condition that is identical to INNER JOINs, expressed using an ON, USING, or NATURAL keyword. The initial results table is calculated the same way. Once the primary JOIN is calculated, an OUTER JOIN will take any unjoined rows from one or both tables, pad them out with NULLs, and append them to the resulting table.`
