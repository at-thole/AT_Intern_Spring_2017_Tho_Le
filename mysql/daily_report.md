#DAILY REPORT
####04-04-2017

####SQL vs NoSQL
**SQL**
- A relational database is a set of tables containing data fitted into predefined categories.
- Each table contains one or more data categories in columns.
- Each row contains a unique instance of data for the categories defined by the columns.
- User can access data from the database without knowing the structure of the database table.

**NoSQL**
- NoSQL databases generally process data faster than relational databases.
- NoSQL databases are also often faster because their data models are simpler.
- Major NoSQL systems are flexible enough to better enable developers to use the applications in ways that meet their needs.

####Window function
A window function performs a calculation across a set of table rows that are somehow related to the current row.
Example:
```sql
SELECT username, start_number, rank()
OVER(ORDER BY start_number)
FROM table_name
```

####MyISAM, InnoDB, Memory

**MyISAM**
- Does not support foreign keys
- Not supports transaction
- Supports fulltext search

**InnoDB**
- Support foreign keys
- Supports transaction
- did not supports fulltext search until MySQL 5.6

**Memory**
Are stored in memory rather than on disk. It is best-used for read-only caches of data from other tables, or for temporary work areas.

Since the data is stored in memory, it is highly vulnerable to power outages or hardware failure, and is unsuitable for permanent data storage

####Views in SQL & PostgreSQL
Views (same Virtual Table) are pseudo-tables. That is, they are not real tables, but nevertheless appear as ordinary tables to SELECT. A view can represent a subset of a real table, selecting certain columns or certain rows from an ordinary table.
Example:
```sql
CREATE VIEW name_view AS
SELECT colum1, colum2
FROM talbe_name
WHERE condition;
```
> SELECT * FROM name_view

####Company's DBMS
**Youtube** using mySQL database administrator.
Storage and data model:
- First : need to define the user model, which can be stored in a single table including email, name, registration data, profile information..
- The second: A video contains a lot of information including meta data (title, description, size, etc.)
- The third : contains a lot of information including video file, comments, view counts, like counts and so on.
- The fifth : the author-video relation will be another table to map user id to video id.

**What is CDN?**
CDN(Content delivery network) is a globally distributed network of proxy servers deployed in multiple data centers.
The biggest benefit using CDN is that CDN replicates content in multiple places so that there’s a better chance of content being closer to the user, with fewer hops, and content will run over a more friendly network
