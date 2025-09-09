/* Queries with expressions */
In addition to querying and referencing raw column data with SQL, you can also use expressions to write more complex logic on column values in a query.
The use of expressions can save time and extra post-processing of the result data, but can also make the query harder to read, so we recommend that when expressions are used in the SELECT part of the query, that they are also given a descriptive alias using the AS keyword.
  Exercises
/* List all movies and their combined sales in millions of dollars */
SELECT Title, (Domestic_sales + International_sales)/1000000 AS Total 
FROM movies
INNER JOIN Boxoffice
ON movies.id = Boxoffice.movie_id;
/* List all movies and their ratings in percent */
SELECT Title, Rating*10 AS Percent 
FROM movies
INNER JOIN Boxoffice
ON movies.id = Boxoffice.movie_id;
/* List all movies that were released on even number years */
SELECT Title, Year
FROM Movies
WHERE YEAR % 2 = 0 ;
