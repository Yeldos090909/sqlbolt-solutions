/* SQL Lesson 3: Queries with constraints */
=	Case sensitive exact string comparison (notice the single equals)
!= or <>	Case sensitive exact string inequality comparison
LIKE	Case insensitive exact string comparison
NOT LIKE	Case insensitive exact string inequality comparison
%	Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE)
_ Used anywhere in a string to match a single character (only with LIKE or NOT LIKE)
IN (…)	String exists in a list
NOT IN (…)	String does not exist in a list
TASKS:
/* Find all the Toy Story movies */
SELECT * FROM movies
WHERE TITLE LIKE "Toy Story%";
/* Find all the movies directed by John Lasseter */
SELECT * FROM movies
WHERE Director = "John Lasseter";
/* Find all the movies (and director) not directed by John Lasseter */
SELECT * FROM movies
WHERE Director != "John Lasseter";
/* Find all the WALL-* movies */
SELECT * FROM movies
WHERE TITLE LIKE "WALL-%";
