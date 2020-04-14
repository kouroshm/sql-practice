-- This is the first query:

-- Years covered by the dataset
SELECT DISTINCT year from population_years;

-- Largest population size for Gabon
select *
from population_years
where population = (select max(population) from population_years
where country = 'Gabon');

-- 10 Lowest Population Countries
select country
from population_years
where year = 2005
order by population ASC
limit 10;

-- Countries with > 100 M population in 2010 in desc order
SELECT DISTINCT country
FROM population_years
WHERE population > 100 and year = 2010
ORDER BY population DESC;

-- Number of Countries with islands inside it
SELECT count(DISTINCT country)
FROM population_years
WHERE country like '%islands%';

-- Difference of population in Indonesia between years 2000 and 2010.
SELECT DISTINCT country as 'Country', ((SELECT population from population_years where country = 'Indonesia' and year = 2010) 
- (SELECT population FROM population_years WHERE country = 'Indonesia' and year = 2000))as 'Difference of Population'
FROM population_years
WHERE country = 'Indonesia' ;


-- Add your additional queries below:
