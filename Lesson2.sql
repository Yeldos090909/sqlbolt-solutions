- SQL Lesson 2: Queries with constraints (Pt. 1)
- =, !=, <, <=, >, >=	Standard numerical operators
- BETWEEN … AND …	Number is within range of two values (inclusive)
- NOT BETWEEN … AND …	Number is not within range of two values (inclusive)
- IN (…)	Number exists in a list
- NOT IN (…)	Number does not exist in a list
- tasks:
/* Find the movie with a row id of 6 */ 
SELECT * FROM movies
WHERE id = 6;
/* Find the movies released in the years between 2000 and 2010 */ 
SELECT * FROM movies
WHERE YEAR BETWEEN 2000 AND 2010;
/* Find the movies not released in the years between 2000 and 2010 */ 
SELECT * FROM movies
WHERE YEAR NOT BETWEEN 2000 AND 2010;
/* Find the first 5 Pixar movies and their release year */ 
SELECT * FROM movies
WHERE ID <= 5;
