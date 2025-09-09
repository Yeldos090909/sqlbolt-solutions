/* OUTER JOINs */
When joining table A to table B, a LEFT JOIN simply includes rows from A regardless of whether a matching row is found in B. The RIGHT JOIN is the same, but reversed, keeping rows in B regardless of whether a match is found in A. Finally, a FULL JOIN simply means that rows from both tables are kept, regardless of whether a matching row exists in the other table.
Exercises
/* Find the list of all buildings that have employees */
SELECT DISTINCT(Building) FROM employees;
/* Find the list of all buildings and their capacity */
SELECT * FROM buildings;
/* Find the list of all buildings and their capacity */
SELECT DISTINCT(Building_name), DISCTINCT(Role)
FROM buildings
  LEFT JOIN Employees
  ON Buildings.Building_name = Employees.Building;
