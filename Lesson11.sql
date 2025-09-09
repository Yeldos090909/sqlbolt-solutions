/* Queries with aggregates (Pt. 2) */
The HAVING clause constraints are written the same way as the WHERE clause constraints, and are applied to the grouped rows. 
/* Find the number of Artists in the studio (without a HAVING clause) */
  SELECT COUNT(Name)
FROM employees
WHERE Role = "Artist";
/* Find the number of Employees of each role in the studio */
SELECT ROLE, COUNT(Name)
FROM employees
GROUP BY Role;
/* Find the total number of years employed by all Engineers */
