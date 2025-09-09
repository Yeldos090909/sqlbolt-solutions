/* Multi-table queries with JOINs */
The INNER JOIN is a process that matches rows from the first table and the second table which have the same key (as defined by the ON constraint) to create a result row with the combined columns from both tables. After the tables are joined, the other clauses we learned previously are then applied.
Exercises
/* Find the domestic and international sales for each movie */
SELECT Title, Domestic_sales, International_sales
FROM movies
     INNER JOIN Boxoffice
     ON movies.id = Boxoffice.movie_id;
/* Show the sales numbers for each movie that did better internationally rather than domestically */
SELECT Title, Domestic_sales, International_sales
FROM movies
     INNER JOIN Boxoffice
     ON movies.id = Boxoffice.movie_id
     WHERE International_sales > Domestic_sales;
/* List all the movies by their ratings in descending order */
SELECT Title, Rating
FROM movies
     INNER JOIN Boxoffice
     ON movies.id = Boxoffice.movie_id
     ORDER BY Rating DESC;
