/* Queries with aggregates */
Exercises:
/* Find the longest time that an employee has been at the studio */
SELECT MAX(Years_employed) FROM employees;
/* For each role, find the average number of years employed by employees in that role */
SELECT Role, AVG(Years_employed)
FROM employees
GROUP BY Role;
/* For each role, find the average number of years employed by employees in that role */
SELECT Building, SUM(Years_employed)
FROM employees
GROUP BY Building;
