/* Filtering and sorting Query results */
SQL provides a convenient way to discard rows that have a duplicate column value by using the DISTINCT keyword.
  SQL provides a way to sort your results by a given column in ascending or descending order using the ORDER BY clause.
  The LIMIT will reduce the number of rows to return, and the optional OFFSET will specify where to begin counting the number rows from.
TASKS:
/* List all directors of Pixar movies (alphabetically), without duplicates */
SELECT DISTINCT Director
FROM movies
ORDER BY Director ASC;
/* List the last four Pixar movies released (ordered from most recent to least) */
SELECT TITLE
FROM movies
ORDER BY YEAR DESC
LIMIT 4;
/* List the first five Pixar movies sorted alphabetically  */
SELECT TITLE
FROM movies
ORDER BY TITLE, YEAR ASC
LIMIT 5;
/* List the next five Pixar movies sorted alphabetically */
SELECT TITLE
FROM movies
ORDER BY TITLE ASC
LIMIT 5 OFFSET 5; /* take the next 5 films (i.e. skip the first 5, show the next 5). */
