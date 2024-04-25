SELECT *
FROM USHouseholdIncome;

SELECT *
FROM ushouseholdincome_statistics;

-- 32533 ROWS
SELECT COUNT(id)
FROM USHouseholdIncome;

-- 32526 ROWS
SELECT COUNT(id)
FROM ushouseholdincome_statistics;

-- The data is not perfect but I believe we can work with that


-- Identifying duplicates
-- After the removal of the duplicates, this query is used as a test to make sure they were deleted
SELECT id, COUNT(id)
FROM USHouseholdIncome
GROUP BY id
HAVING COUNT(id) > 1;

-- Removing the duplicates - 7 rows were affected
DELETE FROM USHouseholdIncome
WHERE row_id IN (
	SELECT row_id
	FROM
		(
		SELECT row_id, 
		id,
		ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) AS row_num
		FROM USHouseholdIncome
		) AS duplicates
	WHERE row_num > 1
);

-- Identifying duplicates for the second table
-- None were found
SELECT id, COUNT(id)
FROM ushouseholdincome_statistics
GROUP BY id
HAVING COUNT(id) > 1;

-- Looking at the database I saw minor mistakes, this query is used to find more of them
SELECT DISTINCT State_Name
FROM USHouseholdIncome
ORDER BY 1;

-- 1 Row was updated 
UPDATE USHouseholdIncome
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';
-- 1 Row was updated
UPDATE USHouseholdIncome
SET State_Name = 'Alabama'
WHERE State_Name = 'alabama';

-- While looking I saw another row with missing data, this query is used to find more of them
SELECT *
FROM USHouseholdIncome
WHERE Place IS NULL
ORDER BY 1;

-- Only one row was found, this query is used to find out if I can fill the missing place value
SELECT *
FROM USHouseholdIncome
WHERE County = 'Autauga County'
ORDER BY 1;

-- 1 Row was updated
UPDATE USHouseholdIncome
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont';

-- More data that might need cleaning
SELECT Type, COUNT(Type)
FROM USHouseholdIncome
GROUP BY Type
ORDER BY 2;
--  Found 2 'CDP' types and 988 'CDP' types. The first one might be a mistake but I don't have enough knowledge of the data so I'm not gonna change that

-- 1 Row was updated
UPDATE USHouseholdIncome
SET Type = 'Borough'
WHERE Type = 'Boroughs';

-- While browsing the dataset I found some AWater rows with a zero value
SELECT Aland, AWater
FROM USHouseholdIncome
WHERE AWater = 0 OR AWater = '' OR Awater IS NULL;
-- Seems like we only have rows with a zero value, no NULL values or missing data, that's good
SELECT DISTINCT AWater
FROM USHouseholdIncome
WHERE AWater = 0 OR AWater = '' OR Awater IS NULL;

-- Now a query for the Aland column
SELECT Aland, AWater
FROM USHouseholdIncome
WHERE ALand = 0 OR ALand = '' OR Aland IS NULL;
-- This time as well, no NULL values or missing data, only zeros
SELECT DISTINCt Aland
FROM USHouseholdIncome
WHERE ALand = 0 OR ALand = '' OR Aland IS NULL;
