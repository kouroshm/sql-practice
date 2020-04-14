-- How many entries in the database are from Africa?
SELECT count(*) as 'Entries'
FROM countries
WHERE continent = 'Africa';


-- What was the total population of Oceania in 2005?
SELECT SUM(population) as 'Total Population'
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id 
WHERE continent = 'Oceania' AND year = 2005; 


-- What is the average population of countries in South America in 2003?
SELECT AVG(population) as 'Average Population'
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2003 AND continent = 'South America';


-- What country had the smallest population in 2007?
SELECT name, MIN(population) as 'Smallest Population'
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2007;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT name, AVG(population) as 'Average Population'
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE name = 'Poland';


-- How many countries have the word "The" in their name?
SELECT count(*) as 'Number of Countries with "The"'
FROM countries
WHERE name like '%The%';


-- What was the total population of each continent in 2010?
SELECT  SUM(population) as 'Population in 2010', continent 
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY 2;

