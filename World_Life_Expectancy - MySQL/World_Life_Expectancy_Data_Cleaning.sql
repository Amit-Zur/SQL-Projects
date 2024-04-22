SELECT * 
FROM worldlifexpectancy
LIMIT 5000;

-- Trying to find if there are any dupes in the data set
-- Later on I can use this query to make sure everything is cleaned
SELECT Country, Year, CONCAT(Country, Year), COUNT(CONCAT(Country, Year))
FROM worldlifexpectancy
GROUP BY Country, Year, CONCAT(Country, Year)
HAVING COUNT(CONCAT(Country, Year)) > 1;


-- There are dupes, now I need to remove them
-- Finding the dupes row numbers, a query I will later use to update the dataset
SELECT *
FROM (
	SELECT Row_ID, CONCAT(Country, Year),
	ROW_NUMBER() OVER (PARTITION BY CONCAT(Country, Year) ORDER BY CONCAT(Country, Year)) AS Row_NUM
	FROM worldlifexpectancy
) AS Row_Table
WHERE Row_NUM > 1;

-- After making sure everything works it's time to update the dataset
DELETE FROM worldlifexpectancy
WHERE
	Row_ID IN (
    SELECT Row_ID
    FROM (
		SELECT Row_ID, CONCAT(Country, Year),
		ROW_NUMBER() OVER (PARTITION BY CONCAT(Country, Year) ORDER BY CONCAT(Country, Year)) AS Row_NUM
		FROM worldlifexpectancy
		) AS Row_Table
		WHERE Row_NUM > 1
        );
-- 3 Rows were affected after running the query as planned. 

-- Now after running over the dataset I could see that the 'Status' column is missing few values
-- This query could serve as a test as well after cleaning the data
SELECT *
FROM worldlifexpectancy
WHERE Status = '';

SELECT DISTINCT(Status)
FROM worldlifexpectancy
WHERE Status <> '';

-- Need to update the missing developing or developed on the status column
UPDATE worldlifexpectancy table_one
JOIN worldlifexpectancy table_two
	ON table_one.Country = table_two.Country
SET table_one.Status = 'Developing'
WHERE table_one.Status = ''
AND table_two.Status <> ''
AND table_two.Status = 'Developing';
-- 7 Rows were affected
UPDATE worldlifexpectancy table_one
JOIN worldlifexpectancy table_two
	ON table_one.Country = table_two.Country
SET table_one.Status = 'Developed'
WHERE table_one.Status = ''
AND table_two.Status <> ''
AND table_two.Status = 'Developed';
-- 1 Row was affected

-- The next column that is missing some values is the life expectancy one
-- We can use this query as a test after updating the data
SELECT Country, Year, Lifeexpectancy
FROM worldlifexpectancy
WHERE Lifeexpectancy = '';

-- Few things we can see while analyzing the life expectancy column 
-- Life expectancy is mostly increasing each year and is steady. 
-- We can average the year above and below the year with missing data to get a rough estimate of the missing values
-- If 2018 data is missing we will average 2019 with 2017 
SELECT table_one.Country, table_one.Year, table_one.Lifeexpectancy,
		table_two.Country, table_two.Year, table_two.Lifeexpectancy,
        table_three.Country, table_three.Year, table_three.Lifeexpectancy,
        ROUND((table_two.Lifeexpectancy + table_three.Lifeexpectancy) / 2, 1)
FROM worldlifexpectancy table_one
JOIN worldlifexpectancy table_two
	ON table_one.Country = table_two.Country
    AND table_one.Year = table_two.Year - 1
JOIN worldlifexpectancy table_three
	ON table_one.Country = table_three.Country
    AND table_one.Year = table_three.Year + 1
WHERE table_one.Lifeexpectancy = '';

UPDATE worldlifexpectancy table_one
JOIN worldlifexpectancy table_two
	ON table_one.Country = table_two.Country
    AND table_one.Year = table_two.Year - 1
JOIN worldlifexpectancy table_three
	ON table_one.Country = table_three.Country
    AND table_one.Year = table_three.Year + 1
SET table_one.Lifeexpectancy =  ROUND((table_two.Lifeexpectancy + table_three.Lifeexpectancy) / 2, 1)
WHERE table_one.Lifeexpectancy = '';
-- 2 Rows updated

