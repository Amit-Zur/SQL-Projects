SELECT *
FROM worldlifexpectancy
LIMIT 5000;

-- This query calculates the minimum and maximum life expectancy of each country 
-- along with the difference of each yearly value of the span of 15 years
-- showing the improvement trend for each country
SELECT Country, MIN(Lifeexpectancy), MAX(Lifeexpectancy),
ROUND(MAX(Lifeexpectancy) - MIN(Lifeexpectancy), 1) AS life_increase_15_years
FROM worldlifexpectancy
GROUP BY Country
HAVING MIN(Lifeexpectancy) <> 0
AND MAX(Lifeexpectancy) <> 0
ORDER BY life_increase_15_years DESC;

-- This query calculates the average yearly life expectancy across all countries
SELECT Year, ROUND(AVG(Lifeexpectancy), 2)
FROM worldlifexpectancy
GROUP BY Year
HAVING MIN(Lifeexpectancy) <> 0
AND MAX(Lifeexpectancy) <> 0
ORDER BY Year;

-- This query calculates the average country life expectancy and GDP 
SELECT Country, ROUND(AVG(Lifeexpectancy), 2) AS Life_exp , ROUND(AVG(GDP), 1) AS GDP
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_exp > 0 
AND GDP > 0 
ORDER BY GDP ASC;

-- This query separates the countries into high and low GDP using the number 1500 as a threshold
-- then the query calculates the count of countries and average life expectancy for each group we separated earlier
SELECT 
SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) AS HIGH_GDP_COUNT,
AVG(CASE WHEN GDP >= 1500 THEN Lifeexpectancy ELSE NULL END) AS HIGH_GDP_LIFE_EXPECTANCY,
SUM(CASE WHEN GDP <= 1500 THEN 1 ELSE 0 END) AS LOW_GDP_COUNT,
AVG(CASE WHEN GDP <= 1500 THEN Lifeexpectancy ELSE NULL END) AS LOW_GDP_LIFE_EXPECTANCY
FROM worldlifexpectancy;

-- This query calclates the average life expectancy for each country 'Status' (Developed versus Developing) 
SELECT Status, COUNT(DISTINCT Country), ROUND(AVG(Lifeexpectancy), 2) AS Life_exp
FROM worldlifexpectancy
GROUP BY Status;

-- This query calculates the average life expectancy and BMI (Body Mass Index)
SELECT Country, ROUND(AVG(Lifeexpectancy), 1) AS Life_exp, ROUND(AVG(BMI), 1) AS BMI
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_exp > 0
AND BMI > 0 
ORDER BY BMI DESC;
-- Higher BMI = High life expectancy according to this data

-- This query calculates the adult mortality of a specific country for each year
-- Can show adult mortality trends within the country over the span of years
SELECT Country, Year, Lifeexpectancy, AdultMortality,
SUM(AdultMortality) OVER(PARTITION BY Country ORDER BY Year) AS Rolling_Total
FROM worldlifexpectancy
WHERE Country LIKE '%Israel%';

-- Correlation between high polio immunzation rate to higher life expectancy 
SELECT Country, ROUND(AVG(Lifeexpectancy), 1) AS Life_exp, ROUND(AVG(Polio), 1) AS Polio
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_exp > 0
AND Polio > 0
ORDER BY Polio DESC;

-- Correlation between high Diphtheria immunzation rate to higher life expectancy 
SELECT Country, ROUND(AVG(Lifeexpectancy), 1) AS Life_exp, ROUND(AVG(Diphtheria), 1) AS Diphtheria
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_exp > 0
AND Diphtheria > 0 
ORDER BY Diphtheria DESC;
