# :hut: **World Life Expectancy Data Cleaning & Exploratory Data Analysis**

## Project Overview 
Welcome to **our** journey through the World Life Expectancy dataset, where we embark on a voyage of discovery, cleaning, and analysis. Our mission? To uncover the stories hidden within the numbers, revealing the heartbeat of global health.

## Dataset Overview
The World Life Expectancy dataset provides insights into key health and socio-economic indicators across various countries from the year 2007 to 2022. It encompasses a range of variables, including:
-  `lifeexpectancy`
-  `AdultMortality`
-  `BMI` (Body Mass Index)
-  `GDP` (Gross Domestic Product)
-  `Polio`
-  `Diphtheria`

## Data Cleaning 

I meticulously clean the dataset by identifying and removing duplicate records, addressing missing values through imputation, correcting inconsistencies in formatting and labeling, and ensuring overall data quality. This rigorous process ensures the reliability and accuracy of my analysis results.

On a quick glance we can see that some values are missing
<p align="center">
  <img src="https://github.com/Murse-Project/SQL-Projects/assets/112909022/48af9426-a44e-45c0-ab4d-9232d8b620c9" width="800" height="550">
</p>


Dataset after the first cleaning process
<p align="center">
  <img src="https://github.com/Murse-Project/SQL-Projects/assets/112909022/7a7a562e-7b5f-4ce4-aad1-843f5062697c" width="800" height="550">
</p>

## EDA - Exploratory Data Analysis 

### I started by examaining life expectancy increase over the years.
<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/909e666d-58b8-496f-a70d-e99853e0234e" width="600" height="450">
<br>
This visualization was built using <a href="https://public.tableau.com/views/World_Life_ExpectancyProject-Life_Expectancy_Increase_15_Years/Sheet2?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>
Keypoints:

1. The top countries predominantly consist of developing nations, highlighting the significant role of socio-economic factors in life expectancy.
2. Top-ranking countries initially exhibited low life expectancy, indicating substantial potential for improvement and growth over time.

### Life expectancy relationship with GDP
<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/cfd233aa-5c5d-474b-a3f3-de90e9c9b81e" width="600" height="450">
<br>
This visualization was built using <a href="https://public.tableau.com/views/World_Life_ExpectancyProject-Life_Expectancy_Data/Sheet3?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

Keypoints:

1. Developed countries account for a minority of the total number of countries globally, with only 32 compared to 161 developing nations.
2. Despite their lower count, developed countries demonstrate notably higher average GDP compared to developing nations.
3. A noticeable correlation emerges between higher average GDP and longer life expectancy, suggesting the impact of economic prosperity on health outcomes.

### Life expectancy relationship with BMI
<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/4ce7f2fc-9688-48ea-85ef-6e6e5c1bf430" width="600" height="450">  
<br>
This visualization was built using <a href="https://public.tableau.com/views/World_Life_ExpectancyProject-Life_Expectancy_BMI/Sheet4?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

