TASKS about a few of the most populous cities of North America
/* List all the Canadian cities and their populations */
SELECT City, Population
FROM north_american_cities
WHERE Country = "Canada";
/* Order all the cities in the United States by their latitude from north to south */
SELECT City
FROM north_american_cities
WHERE Country = "United States"
Order by latitude DESC;
/* List all the cities west of Chicago, ordered from west to east */
SELECT City 
FROM north_american_cities
WHERE longitude < (
                    SELECT longitude
                    FROM north_american_cities
                    WHERE City = "Chicago")
Order by longitude ASC;
/* List the two largest cities in Mexico (by population) */
SELECT City
FROM north_american_cities
WHERE Country = "Mexico"
Order by population DESC
LIMIT 2;
/* List the third and fourth largest cities (by population) in the United States and their population */
SELECT City
FROM north_american_cities
WHERE Country = "United States"
Order by population DESC
LIMIT 2 OFFSET 2;
