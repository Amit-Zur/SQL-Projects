-- Biggest states in the USA filterd by Land (Order BY 2) or by water (Order BY 3)
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM USHouseholdIncome
GROUP BY State_Name
ORDER BY 3 DESC
LIMIT 10;

-- Managed to filter out 315 with the where statement
SELECT * 
FROM USHouseholdIncome UHI
INNER JOIN ushouseholdincome_statistics UHIS 
	ON UHI.id = UHIS.id
WHERE Mean <> 0
LIMIT 50000;

-- This is the query that I will work with for a while
SELECT UHI.State_Name, County, Type, 'Primary', Mean, Median
FROM USHouseholdIncome UHI
INNER JOIN ushouseholdincome_statistics UHIS 
	ON UHI.id = UHIS.id
WHERE Mean <> 0
LIMIT 50000;

-- Average household income in the USA by state
-- We can filter by lowest (ASC order) or highest (DESC order)
-- We can also filter by Average mean income or by Average median income by order by the third column instead of the second one
SELECT UHI.State_Name, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM USHouseholdIncome UHI
INNER JOIN ushouseholdincome_statistics UHIS 
	ON UHI.id = UHIS.id
WHERE Mean <> 0
GROUP BY UHI.State_Name
ORDER BY 3 DESC
LIMIT 10; 

-- Average household income in the USA by type
-- We can filter by lowest (ASC order) or highest (DESC order)
-- We can also filter by Average mean income or by Average median income by order by the third column instead of the second one
-- HAVING COUNT(Type) to filter out unwanted rows 
SELECT Type, COUNT(Type), ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM USHouseholdIncome UHI
INNER JOIN ushouseholdincome_statistics UHIS 
	ON UHI.id = UHIS.id
WHERE Mean <> 0
GROUP BY UHI.Type
HAVING COUNT(Type) > 100
ORDER BY 3 DESC
LIMIT 100; 

-- Trying to find out where the 17 communities with the lowest average mean and median income are from
-- The result doesn't surpise me because we already saw earlier that Puerto Rico was the last one on the household income table
SELECT *
FROM USHouseholdIncome UHI
WHERE Type = 'Community';

-- Average household income in the USA by city
-- We can filter by lowest (ASC order) or highest (DESC order)
-- We can also filter by Average mean income or by Average median income by order by the third column instead of the second one
SELECT UHI.State_Name, City, ROUND(AVG(MEAN), 1), ROUND(AVG(Median), 1)
FROM USHouseholdIncome UHI
INNER JOIN ushouseholdincome_statistics UHIS 
	ON UHI.id = UHIS.id
GROUP BY UHI.State_Name, City
ORDER BY 3 DESC;
-- Looking at the median data we can see few cities that cap at 300,000.0
-- Should explore this one a little bit more, look at the source of the data
