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

### Average Household Income by Area Type

<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/c338a21e-0464-4790-9d33-3c350b5f4fdd" width="600" height="750">
<br>
This visualization was built using <a href="https://public.tableau.com/views/US_Household_IncomeProject-AverageIncomeByAreaType/Sheet9?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

Keyponits: 
1. Metropolitan areas, characterized by boroughs and districts, might show higher mean household incomes compared to other types of areas, indicating the economic advantages of living in densely populated urban centers
   * While urban areas often offer greater economic opportunities, including higher-paying jobs, access to amenities, and cultural experiences, they also typically come with a higher cost of living. This can include expenses such as housing, transportation, and daily necessities, which can offset the higher incomes earned by residents
2. In addition to economic factors, the decision to live in urban, suburban, or rural areas may also be influenced by quality of life considerations. While urban areas may offer higher incomes and greater access to amenities and cultural opportunities, they can also be associated with factors such as higher levels of pollution, noise, and congestion, as well as reduced green space and recreational areas. In contrast, suburban and rural areas may offer a quieter, more relaxed lifestyle with closer proximity to nature and lower levels of pollution, but they may have fewer job opportunities and amenities compared to urban centers

## Key insights and Conclusions

### Key insights

- The analysis reveals significant disparities in average household income between different states. This suggests that economic conditions and opportunities vary widely across the United States
- Metropolitan areas, characterized by densely populated urban centers, tend to have higher mean household incomes compared to other types of areas. This indicates the economic advantages of living in urban centers, such as greater job opportunities and access to amenities
- While urban areas offer higher incomes, they also come with a higher cost of living, including expenses such as housing and transportation. This suggests that individuals must consider the trade-offs between higher incomes and increased expenses when choosing where to live

### Conclusions  

-  The substantial income disparities between states highlight the need for targeted policies to address economic inequality and promote economic development in less affluent regions
-  The higher household incomes observed in metropolitan areas underscore the importance of urbanization in driving economic growth and prosperity. However, policymakers must also address the challenges associated with urban living, such as the high cost of living and environmental concerns
-  Individuals and policymakers alike must carefully balance economic considerations with quality of life factors when making decisions about where to live and how to allocate resources. This requires a comprehensive approach that takes into account both economic opportunities and the broader well-being of residents
-  Tailored regional policies that address the unique economic and social needs of different areas can help mitigate income disparities and promote inclusive economic growth across the country





