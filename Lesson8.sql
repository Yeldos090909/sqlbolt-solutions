/* A short note on NULLs */
An alternative to NULL values in your database is to have data-type appropriate default values, like 0 for numerical data, empty strings for text data, etc. But if your database needs to store incomplete data, then NULL values can be appropriate if the default values will skew later analysis (for example, when taking averages of numerical data).
Exercises
  /* Find the name and role of all employees who have not been assigned to a building */
SELECT Name, Role
FROM employees
WHERE building IS NULL;
  /* Find the names of the buildings that hold no employees */
SELECT building_name
FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building
WHERE building IS NULL;
