# :hut: **World Life Expectancy Data Cleaning & Exploratory Data Analysis**

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

Keypoints:

1. Despite BMI's association with various health risks such as heart disease, high blood pressure, and type 2 diabetes, my analysis revealed a correlation between countries with high BMI and high life expectancy, challenging conventional expectations.
2. This discovery underscores the multifaceted and complex nature of health determinants, emphasizing the need for comprehensive and nuanced approaches to understanding global health outcomes.

### Life expectancy relationship with Immunization coverage 
### - Polio
<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/4249bc56-4899-4057-a99c-427e6a769c3f" width="600" height="450">
<br>
This visualization was built using <a href="https://public.tableau.com/views/World_Life_ExpectancyProject-Life_Expectancy_Polio/Sheet5?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

### - Diphtheria
<p align="center">
  <img src="https://github.com/Amit-Zur/SQL-Projects/assets/112909022/8b07c704-d845-4cc9-83ce-0ff90bf22cc6" width="600" height="450">
<br>
This visualization was built using <a href="https://public.tableau.com/views/World_Life_ExpectancyProject-Life_Expectancy_Diphtheria/Sheet5?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Tableau</a>
</p>

Keypoints:
1. A clear correlation emerges between high immunization coverage for polio and diphtheria and high life expectancy, indicating the effectiveness of vaccination programs in promoting public health.
2. This observation underscores significant challenges with vaccine availability, accessibility, affordability, and the quality of health services, particularly in developing countries where these factors may be lacking.

## Key insights and Conclusions
### Key insights
- Country Distribution:
Developing countries significantly outnumber developed nations, with 161 developing countries compared to only 32 developed ones.

- Economic Disparities:
Developed countries, despite their smaller count, exhibit markedly higher average GDP compared to developing nations.

- Life Expectancy and GDP:
A clear correlation is observed between higher average GDP and longer life expectancy, underscoring the influence of economic prosperity on health outcomes.

- BMI and Life Expectancy:
Despite the known health risks associated with high BMI, our analysis reveals a surprising correlation between countries with high BMI and high life expectancy.

- Immunization Coverage:
High immunization coverage for diseases such as polio and diphtheria is associated with higher life expectancy, highlighting the effectiveness of vaccination programs in promoting public health.

### Conclusions
- Complex Nature of Health Determinants:
The dataset analysis sheds light on the multifaceted and complex nature of health determinants, emphasizing the need for comprehensive approaches to understanding global health outcomes.

- Challenges with Vaccination Programs:
The correlation between immunization coverage and life expectancy highlights key challenges with vaccine availability, accessibility, affordability, and the quality of health services, particularly in developing countries.

- Nuanced Understanding of Health Trends:
The dataset analysis challenges conventional expectations and underscores the importance of nuanced understanding when examining health trends, taking into account socio-economic factors, healthcare infrastructure, and cultural contexts.

- Implications for Public Health Policy:
These findings have significant implications for public health policy, emphasizing the importance of addressing economic disparities, improving healthcare access, and implementing effective vaccination programs to enhance global health outcomes.
