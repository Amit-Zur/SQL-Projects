# :us: **US Household Income Data Cleaning & Exploratory Data Analysis**

## Dataset Overview
The US Household Income dataset provides insights into key socio-economic indicators across various regions within the United States. 
This dataset allows for the analysis of income distribution, regional disparities, and urban-rural income gaps within the United States.
It encompasses a range of variables, including:

- `State_Name`
- `County`
- `City`
- `Type` (Indicates the type of area, such as urban, rural, suburban, or village, etc)
- `ALand` (The land area in square miles)
- `AWater` (The water area in square miles)
- `Mean` (The mean household income)
- `Median` (The median household income)

## Data Cleaning 
I conducted a thorough data cleaning process to enhance the quality and integrity of the US Household Income dataset. This involved meticulously identifying and removing duplicate records, addressing missing values, correcting inconsistencies in formatting and labeling, and ensuring overall data quality. These rigorous measures were implemented to guarantee the reliability and accuracy of subsequent analysis results.

## EDA - Exploratory Data Analysis 

### I started by examaining which states are the largest

<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/6ebf00a9-0ae5-4ec5-8d26-911f87592ef3" width="1000" height="450">
<br>
This visualization was built using <a href="https://public.tableau.com/views/US_Household_IncomeProject-BiggestStates/Sheet7?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

Keypoints:

1. Some land & water data might be corrupt, it doesn't correlate with the wiki page but it does have a good estimate 
2. This graph serves as a reference point for the subsequent data analysis

### Highest and Lowest Average Household Income by State 


<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/e3557bc4-8fe4-4e1d-baa4-38797236a974" width="1000" height="450">
<br>
This visualization was built using <a href="https://public.tableau.com/views/US_Household_IncomeProject-AverageIncomebyStateHighest/Sheet8?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/a749911d-5a7a-4b3c-9c45-df75b4189f19" width="1000" height="450">
<br>
This visualization was built using <a href="https://public.tableau.com/views/US_Household_IncomeProject-AverageIncomebyStateLowest/Sheet8?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

Keypoints:
1. The disparity in household income between the highest and lowest states is substantial
2. A correlation could potentially exist between household income and the cost of living in each state







