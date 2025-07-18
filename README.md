# AI-Jobs-2025-Insights-for-Career-Starters
by Julian Armin Riedl (2025)

##  Table of Contents
- [Overview](#overview)
- [Key Questions](#key-questions)
- [Why These Questions Matter](#why-these-questions-matter)
- [Dataset](#dataset)
  - [Dataset Overview](#dataset-overview)
- [License](#license)
- [Tools I Used](#tools-i-used)
- [How to Reproduce](#how-to-reproduce)
- [Analysis by Questions](#analysis-by-questions)
  - [Question 1: Most In-Demand Entry-Level AI Roles & Locations](#question-1-which-ai-related-job-roles-were-most-in-demand-for-entry-level-candidates-and-where-were-they-located)
  - [Question 2: Most Requested Skills by Experience Level](#question-2-what-skills-were-most-frequently-required-for-entry-level-ai-positions-and-how-do-they-differ-across-experience-levels)
  - [Question 3: Salary Levels, Growth & Location Differences](#question-3-which-ai-roles-offer-the-highest-entry-level-salaries-how-do-salaries-evolve-across-experience-levels-and-how-do-they-vary-by-location)
  - [Question 4: Remote Work Availability by Role & Level](#question-4-which-roles-were-more-frequently-offered-as-remote-positions-at-the-entry-level-did-remote-availability-increase-with-experience-level)
  - [Question 5: Impact of Remote Work on Salary](#question-5-did-the-option-to-work-remotely-influence-salary-differences-among-entry-level-ai-jobs)
- [Key Findings](#key-findings)
- [Skills Demonstrated](#skills-demonstrated)
- [What I Learned](#what-i-learned)

## Overview
This project provides a data-driven exploration of the entry-level AI job market, focusing on salary trends, required skills, demand by role and location, and remote work availability. By analyzing structured job posting data, the goal is to uncover actionable insights for job seekers interested in the evolving landscape of AI careers.

## Key Questions
- Which AI-related job roles were most in demand for entry-level candidates, and where were they located?
- What skills were most frequently required for entry-level AI positions, and how do they differ across experience levels?
- Which AI roles offer the highest entry-level salaries, how do salaries evolve across experience levels, and how do they vary by location?
- Which roles were more frequently offered as remote positions at the entry level? Did remote availability increase with experience level?
- Did the option to work remotely influence salary differences among entry-level AI jobs?

## Why These Questions Matter 
As someone currently navigating the early stages of a career in Artificial Intelligence, I developed this project to better understand the key factors that influence entry-level opportunities in the field. The questions explored below aim to offer clarity for others in a similar position those - seeking to make informed, structured decisions about where to focus their efforts, what skills to develop, and which paths offer the most promising growth.

#### Question 1: Which AI-related job roles were most in demand for entry-level candidates, and where were they located?
Understanding which roles are most frequently offered allows newcomers to prioritize their career path and focus their learning accordingly, while insights into geographical distribution help align job searches with regions offering the most opportunities.
#### Question 2: What skills were most frequently required for entry-level AI positions, and how do they differ across experience levels?
This question highlights the most relevant skills beginners should acquire early on and reveals how expectations evolve with experience—offering a clear roadmap for long-term growth and development.
#### Question 3: Which AI roles offer the highest entry-level salaries, how do salaries evolve across experience levels, and how do they vary by location?
Understanding salary levels, growth potential, and geographic variations allows candidates to make financially informed career decisions. It helps them identify roles that offer competitive starting pay, strong long-term compensation prospects, and favorable salary conditions depending on location.
#### Question 4: Which roles were more frequently offered as remote positions at the entry level? Did remote availability increase with experience level?
Exploring remote work trends helps job seekers understand which roles support flexible work arrangements, allowing them to target positions that match their lifestyle and preferences—especially as experience grows.
#### Question 5: Did the option to work remotely influence salary differences among entry-level AI jobs?
Analyzing the relationship between remote work and salary provides clarity on whether flexibility comes with financial trade-offs, helping candidates better evaluate the full value of a job offer.



 
 ## Dataset
 The dataset used in this project comes from Kaggle:
 [Global AI Job Market & Salary Trends 2025](https://www.kaggle.com/datasets/bismasajjad/global-ai-job-market-and-salary-trends-2025) dataset, available on Kaggle.

###  Dataset Overview

This dataset contains detailed information on global AI job postings, covering aspects from job titles to compensation, work modes, and required qualifications. It includes:

#### 🔹 Job Metadata
- **Job title** – Role designation (e.g., *AI Engineer*, *Data Scientist*)
- **Job ID** – Unique identifier for each posting
- **Posting date** and **application deadline**

#### 🔹 Compensation
- **Salary (USD)** – Annual salary converted into USD
- **Original salary currency** – Currency before conversion
- **Benefits score** – Quantified perks such as insurance or equity

#### 🔹 Work Arrangement
- **Remote ratio** – Work mode: 0 (on-site), 50 (hybrid), 100 (fully remote)
- **Employment type** – FT (Full-time), PT, FL (Freelance), CT (Contract)

#### 🔹 Company & Location
- **Company name**
- **Company location** – Country of the hiring organization
- **Employee residence** – Expected work location of the employee
- **Company size** – Small (S), Medium (M), Large (L)
- **Industry** – Sector of operation (e.g., Finance, Tech)

#### 🔹 Candidate Requirements
- **Experience level** – EN (Entry), MI, SE, EX
- **Years of experience**
- **Education level** – e.g., Bachelor, Master, PhD
- **Required skills** – Comma-separated technical and soft skills
- **Job description length** – Character count of the full description

### License
- **License**: CC0 1.0 Universal (https://creativecommons.org/publicdomain/zero/1.0/)

## Tools I Used

- **Excel** – For quick data exploration 
- **SQL** – For querying and filtering the dataset  
- **Tableau** – For creating visualizations and dashboards  
- **Git & GitHub** – For version control and project documentation



## How to Reproduce

You can reproduce this analysis using:

- The dataset from [Kaggle](https://www.kaggle.com/datasets/bismasajjad/global-ai-job-market-and-salary-trends-2025)
- The SQL queries provided in `/sql/`
- The generated visualizations in `/visuals/`




## Analysis By Questions

### Question 1: Which AI-related job roles were most in demand for entry-level candidates, and where were they located? 
To answer which AI-related job roles were most in demand for entry-level candidates, the dataset was filtered for positions with the experience level set to 'Entry'. Using the SQL query below, the data was grouped by job title and the number of postings per role was counted to identify which entry-level roles appeared most frequently.

#### SQL Query
```sql
SELECT DISTINCT job_title,  
COUNT(*) AS job_post_count
FROM test123-459006.CapstoneProject.AiJobData
WHERE experience_level = 'EN'
GROUP BY job_title
ORDER BY job_post_count DESC 
```
#### Visualization
The following horizontal bar chart shows the frequency of AI-related job roles offered at the entry level. Each bar represents a specific job title, with the length of the bar corresponding to the number of job postings for that role. 

![Frequency of AI Job Roles Offered at Entry Level](visuals\entry_level_ai_roles_frequency.png)

##### Insight
"Machine Learning Researcher" is the most in-demand entry-level AI role, followed by "Principal Data Scientist" and "Data Analyst". It is also noticeable that the demand for many roles is relatively close, indicating a broad need for diverse AI skills at the entry level

#### Job Location Analysis
To answer where the AI-related jobs at entry level are primarily located, the following SQL query was used to count the number of entry-level job postings by company location. It filters the dataset for entries where the experience level is 'EN' (Entry-Level), groups them by the hiring company's country, and orders the results by the number of postings in descending order

#### SQL Query 
```sql 
SELECT DISTINCT company_location,  
COUNT(*) AS job_location_count
FROM test123-459006.CapstoneProject.AiJobData
WHERE experience_level = 'EN'
GROUP BY company_location
ORDER BY job_location_count DESC
```
#### Visualization 
The following bar chart shows the number of entry-level AI job postings by company location.
Each bar represents a country, and the length of the bar corresponds to the total number of entry-level AI positions posted by companies based in that country.

![Entry-Level AI Job Postings by Country](visuals\entry_level_ai_roles_frequency_by_country.png)
##### Insight
The chart reveals that countries such as Australia, China, and South Korea lead in offering the most entry-level AI positions.
It is also noticeable that the demand is evenly distributed across many countries, with only relatively small differences between the top 20 locations.

### Question 2: What skills were most frequently required for entry-level AI positions, and how do they differ across experience levels?
To answer the question of which skills were most frequently required for entry-level AI positions, the dataset was queried by splitting the comma-separated required_skills field into individual skills, filtering for entry-level positions only. Each skill was normalized (trimmed and lowercased) and then aggregated to count how often it appeared across all relevant job postings.

```sql 
SELECT 
TRIM(LOWER(skill)) AS skill,
COUNT(*) AS skill_count
FROM (
  SELECT job_id,
  TRIM(skill) AS skill 
  FROM test123-459006.CapstoneProject.AiJobData,
  UNNEST(SPLIT(required_skills,",")) AS skill
  WHERE experience_level = "EN"
  AND required_skills IS NOT NULL)
GROUP BY skill
ORDER BY skill_count DESC
```
#### Visualization 
The following bar chart shows the top 10 most requested skills for entry-level AI positions, represented as a percentage of total job postings requiring each skill. The x-axis indicates the proportion of entry-level job listings mentioning each skill, while the y-axis lists the specific technologies or tools. 

![Top 10 Most Requested Entry-Level Skills (in%)](visuals\top_10_most_required_skills_entry_level.png)
##### Insight
Python is the most frequently required skill, appearing in 31% of entry-level AI job postings. SQL is the second most common, followed by tools like Kubernetes, TensorFlow, and PyTorch. Other skills such as Scala, Linux, and Git also appear regularly. This suggests that employers value a combination of general programming knowledge and familiarity with AI-related tools and platforms.

#### Most Requested Skills Across All Experience Levels

To answer which skills were most frequently required across all experience levels, the dataset was queried by splitting the comma-separated required_skills field into individual skills, without filtering for a specific experience level. Each skill was normalized (trimmed and lowercased) and then aggregated to count how often it appeared across all job postings.

```sql 
SELECT 
TRIM(LOWER(skill)) AS skill, 
COUNT(skill) AS skill_count,
(skill_count/15000)*100 AS skill_in_percent
FROM (
  SELECT job_id,
  experience_level,
  TRIM(skill) AS skill 
  FROM test123-459006.CapstoneProject.AiJobData,
  UNNEST(SPLIT(required_skills,",")) AS skill
  WHERE required_skills IS NOT NULL)
GROUP BY skill
ORDER BY skill_count DESC
```
#### Visualization
 The following bar chart shows the top 10 most requested skills for all experience levels AI positions, represented as a percentage of total job postings requiring each skill. The x-axis indicates the proportion of entry-level job listings mentioning each skill, while the y-axis lists the specific technologies or tools.

 ![Top 10 Most Requested Skills Across All Experience Levels (in %)](visuals\top_10_most_required_skills_all_level.png)
 ##### Insight
Compared to the entry-level skill distribution, the overall demand for skills across all experience levels is remarkably similar. Python and SQL remain the two most requested skills, followed by tools such as TensorFlow, Kubernetes, and PyTorch. This suggests that foundational technical requirements in AI roles remain consistent regardless of experience level, indicating that entry-level candidates are already expected to possess many of the same core competencies as more experienced professionals.

### Question 3: Which AI roles offer the highest entry-level salaries, how do salaries evolve across experience levels, and how do they vary by location?

To answer this, the dataset was queried to calculate the median salary for each AI-related job title at the entry level. The median was chosen instead of the average to avoid distortion from salary outliers and better reflect typical compensation.

#### SQL Query

```sql
SELECT 
DISTINCT job_title,
PERCENTILE_CONT(salary_usd, 0.5) OVER (PARTITION BY job_title) AS salary
FROM test123-459006.CapstoneProject.AiJobData
WHERE experience_level ="EN"
ORDER BY salary DESC
```
#### Visualization 
The following bar chart shows the top 10 highest paying entry-level jobs in the field of artificial intelligence, ranked by their median annual salaries in USD. The Y-axis lists the job titles, and the X-axis represents the corresponding median salary in USD. The chart provides a horizontal comparison of compensation levels across different AI-related entry-level roles.

![Top 10 Highest Paying Entry-Level AI Jobs (Median Salary)](visuals\top_10_jobs_highest_median_salary_entry_level.png)

##### Insight
The chart shows that the Top 10 highest paying entry-level AI jobs have median salaries between approximately $60,780 and $63,454. Robotics Engineer and Computer Vision Engineer are the top two highest paying roles, with very similar salaries. The differences in median salary across the top 10 roles are relatively small, suggesting a generally consistent pay level among entry-level positions in AI.

#### Top AI Roles with the Highest Salary Growth Potential

To identify the top AI roles with the highest salary growth potential, the dataset was analyzed by calculating the median salary for each job title across four experience levels, restructuring the data to align these levels per role, and computing the percentage increase from entry-level to expert to highlight roles with the most significant long-term salary development.

#### SQL Query
```sql
WITH medians AS (
  SELECT  
    job_title,
    experience_level,
    PERCENTILE_CONT(salary_usd, 0.5) OVER (PARTITION BY job_title, experience_level) AS median_salary
  FROM `test123-459006.CapstoneProject.AiJobData`
  WHERE experience_level IN ('EN', 'MI', 'SE', 'EX')
),

pivoted AS (
  SELECT 
    job_title,
    MAX(IF(experience_level = 'EN', median_salary, NULL)) AS en_salary,
    MAX(IF(experience_level = 'MI', median_salary, NULL)) AS mi_salary,
    MAX(IF(experience_level = 'SE', median_salary, NULL)) AS se_salary,
    MAX(IF(experience_level = 'EX', median_salary, NULL)) AS ex_salary
  FROM medians
  GROUP BY job_title
),

long_format AS (
  SELECT job_title, 'EN' AS experience_level, 0.0 AS percent_growth_from_entry FROM pivoted WHERE en_salary IS NOT NULL
  UNION ALL
  SELECT job_title, 'MI', ROUND(((mi_salary - en_salary) / en_salary) * 100, 1) FROM pivoted WHERE en_salary IS NOT NULL AND mi_salary IS NOT NULL
  UNION ALL
  SELECT job_title, 'SE', ROUND(((se_salary - en_salary) / en_salary) * 100, 1) FROM pivoted WHERE en_salary IS NOT NULL AND se_salary IS NOT NULL
  UNION ALL
  SELECT job_title, 'EX', ROUND(((ex_salary - en_salary) / en_salary) * 100, 1) FROM pivoted WHERE en_salary IS NOT NULL AND ex_salary IS NOT NULL
),

average_growth AS (
  SELECT
    'Average' AS job_title,
    experience_level,
    ROUND(AVG(percent_growth_from_entry), 1) AS percent_growth_from_entry
  FROM long_format
  WHERE experience_level != 'EN'
  GROUP BY experience_level
  UNION ALL
  SELECT 'Average', 'EN', 0.0
)

SELECT * FROM long_format
UNION ALL
SELECT * FROM average_growth
ORDER BY job_title, experience_level;
```
#### Visualization
The following line chart shows the percentage salary increase from entry to executive level for the top 5 AI job roles with the highest growth, compared to the overall average. The X-axis represents different career stages (Entry, Mid, Senior, Executive), while the Y-axis indicates the cumulative salary growth in percentage terms relative to the entry-level salary. Each colored line represents a specific job title, with a dotted line showing the overall average growth across all roles.

![Top 5 AI Roles by % Salary increase from Entry to Executive Compared to Overall Average](visuals\top_5_jobs_salary_increase_entry_to_executive.png)

##### Insight 
The chart illustrates how salaries develop proportionally across experience levels, revealing that some roles—such as AI Research Scientist and AI Specialist—show significantly stronger percentage growth over time compared to others. This highlights how certain roles benefit more from career progression in terms of salary. However, it's important to note that these figures represent relative percentage increases, not absolute salary levels. Since the growth is calculated from each role's entry-level median salary, a higher percentage does not necessarily mean a higher final salary in absolute terms. Nonetheless, the variation in growth patterns emphasizes that some AI careers offer more substantial long-term earning potential than others.

#### Countries with the Highest-Paying Entry-Level AI Positions

To answer this part of the question—how AI entry-level salaries vary by location—the data was analyzed to identify which countries offer the highest median salaries for entry-level positions. For each country, the typical (median) salary was calculated based on all available entry-level job postings, and the results were ranked to highlight the top-paying locations worldwide.

#### SQL Query

```sql
SELECT  
  company_location AS country,
  PERCENTILE_CONT(salary_usd, 0.5) OVER (PARTITION BY company_location) AS median_entry_salary
FROM `test123-459006.CapstoneProject.AiJobData`
WHERE experience_level = 'EN'
QUALIFY ROW_NUMBER() OVER (PARTITION BY company_location ORDER BY NULL) = 1
ORDER BY median_entry_salary DESC
```
#### Visualization
The following map and bar chart show the median entry-level salary for AI roles across different countries, expressed in USD. The map provides a geographical overview, while the bar chart ranks countries by their median salaries for entry-level AI positions.

![Entry-Level Median Salary per Country (in USD)](visuals\entry_level_median_salary_by_country.png)

##### Insight
The data reveals that Switzerland offers the highest entry-level median salary in AI at $94,037, followed by Denmark and Norway, all exceeding $78,000. The United States and United Kingdom also rank highly, indicating strong compensation for newcomers in the AI field. In contrast, countries such as India, China, and Japan show significantly lower median salaries for entry-level roles. This highlights clear regional disparities, with Western and Northern European countries, as well as North America, offering the most lucrative starting positions in AI.

### Question 4: Which roles were more frequently offered as remote positions at the entry level? Did remote availability increase with experience level?

To answer this question the data was grouped by experience level to analyze the distribution of job types based on their remote ratio. The number and share of fully remote, hybrid, and on-site positions were calculated for each level, allowing for a comparison of how remote work opportunities evolve from entry to more senior stages.

#### SQL Query
```sql
SELECT
  experience_level,
  COUNT(*) AS total_jobs,
  COUNTIF(remote_ratio = 100) AS remote_jobs,
  COUNTIF(remote_ratio = 50) AS hybrid_jobs,
  COUNTIF(remote_ratio = 0) AS on_site_jobs,
  
  COUNTIF(remote_ratio = 100) / COUNT(*) AS remote_ratio,
  COUNTIF(remote_ratio = 50) / COUNT(*) AS hybrid_ratio,
  COUNTIF(remote_ratio = 0) / COUNT(*) AS on_site_ratio
FROM
  test123-459006.CapstoneProject.AiJobData
GROUP BY
  experience_level
ORDER BY
  experience_level;
```
#### Visualization
The following visualization combines a horizontal bar chart with labeled data points to show the top 10 entry-level AI job titles ranked by their remote work ratio. The Y-axis lists the job titles, while the X-axis represents the percentage of roles offered as fully remote. Each bar visually indicates the remote ratio for a given role, and the dots at the end of the bars highlight the exact values for easier comparison.

![Top 10 Entry-Level Jobs by Remote Work Ratio](visuals\top_10_jobs_highest_remote_ratio_entry_level.png)

##### Insight
The chart shows that roles such as AI Software Engineer, Principal Data Scientist, and Machine Learning Engineer have the highest share of fully remote entry-level positions, with remote ratios between 36% and 38%. Other engineering-related roles like ML Ops Engineer and Data Engineer also appear in the top 10. This suggests that remote work is more common in certain AI roles, particularly those with a strong technical or engineering focus. Still, even the highest ratios stay below 40%, indicating that the majority of entry-level AI jobs are not fully remote.

#### Remote Work Availability Across Experience Levels
To address the second part of the questionhe same dataset was analyzed by grouping jobs according to experience level and comparing the share of fully remote, hybrid, and on-site positions across those levels. This allows us to observe how remote work availability changes as roles become more senior.

#### Visualization
The following stacked bar chart shows the distribution of job postings by work mode "remote, hybrid, and on-site" across different experience levels: Entry, Mid, Senior, and Executive. The X-axis represents the experience levels, while the Y-axis indicates the share of job postings in percentage terms. Each bar is divided into three colored segments corresponding to the share of postings in each work mode.

![Remote, Hybrid, and On-Site Share by Experience Level](visuals\remote_hybrid_onsite_ratio_experience_levels.png)
##### Insight
The chart reveals that the proportion of fully remote positions increases slightly with experience level, from 31.8% at entry level to 33.5% at executive level. Hybrid positions remain relatively stable, around 33–34% across all levels. Meanwhile, on-site roles decrease marginally, from 34.7% at entry level to 33.1% at the executive level. Overall, the distribution is fairly balanced, but there is a subtle trend indicating that remote work becomes slightly more common with seniority, while on-site roles decline accordingly.

### Question 5: Did the option to work remotely influence salary differences among entry-level AI jobs?

To answer this question, the query focuses on entry-level AI jobs, examining how much they pay and how flexible they are in terms of remote work, by grouping them into on-site, hybrid, or fully remote roles based on their remote work percentage.

#### SQL Query
```sql
SELECT
    job_id,
    experience_level,
    remote_ratio,
    salary_usd,
    CASE
        WHEN remote_ratio = 0 THEN 'On Site'
        WHEN remote_ratio = 50 THEN 'Hybrid'
        WHEN remote_ratio = 100 THEN 'Remote'
        ELSE 'Unknown'
    END AS work_mode
FROM
    test123-459006.CapstoneProject.AiJobData
WHERE
    experience_level = 'EN'
```
#### Visualization 
 The following boxplot chart shows how salaries (in USD) for entry-level AI jobs are distributed based on work mode: On Site, Hybrid, or Remote. The vertical axis represents the salary amounts, while the horizontal axis shows the three work modes. Each gray box represents the range where most salaries fall (the middle 50%), and the red line shows the median salary for each group. 

 ![Salary in USD by Work Mode](visuals\salary_in_usd_by_work_mode.png)

 ##### Insight
 From this chart, we can see a slight trend: Remote jobs have the highest median salary, followed by Hybrid and then On Site. Although the differences are small, less than $2,000, they suggest that roles with more remote flexibility tend to offer slightly higher pay.

## Key Findings

- **High Demand for Diverse Entry-Level Roles:**  
  *Machine Learning Researcher* is the most in-demand entry-level AI role, followed closely by *Principal Data Scientist* and *Data Analyst*. However, demand across roles is relatively evenly distributed, indicating a broad need for diverse AI skillsets.

- **Global Job Opportunities:**  
  Countries such as **Australia**, **China**, and **South Korea** offer the highest number of entry-level AI positions. Yet, the top 20 countries are fairly close in numbers, suggesting globally distributed opportunities.

- **Python and SQL Dominate the Skillset:**  
  **Python** is the most frequently required skill, followed by **SQL**, then tools like **Kubernetes**, **TensorFlow**, and **PyTorch**. Employers clearly value a strong foundation in both programming and AI-related tools.

- **Skill Expectations Remain Consistent Across Levels:**  
  The most in-demand skills at the entry level remain nearly identical at higher experience levels. This means newcomers are expected to already have many of the same core technical skills as more senior professionals.

- **Similar Pay Across Top Entry-Level Roles:**  
  The top 10 highest-paying entry-level AI jobs offer median salaries ranging from **$60,780 to $63,454**, with **Robotics Engineer** and **Computer Vision Engineer** at the top. Differences between these roles are small, indicating consistent compensation levels.

- **Career Growth Potential Varies by Role:**  
  Roles like **AI Research Scientist** and **AI Specialist** show the strongest percentage salary growth from entry to executive level, highlighting higher long-term earning potential in some specialized paths.

- **Regional Salary Disparities:**  
  **Switzerland**, **Denmark**, and **Norway** offer the highest median entry-level salaries (above $78,000), while **India**, **China**, and **Japan** rank lower. This reflects clear geographic differences in compensation, favoring Western and Northern Europe and North America.

- **Remote Work More Common in Technical Roles:**  
  Jobs like **AI Software Engineer**, **Principal Data Scientist**, and **ML Engineer** have the highest share of fully remote entry-level positions (36–38%), particularly in technical domains. Still, fewer than 40% of jobs are fully remote.

- **Remote Flexibility Increases with Seniority:**  
  Fully remote positions rise slightly with experience level (from 31.8% at entry to 33.5% at executive), while on-site roles decrease. Hybrid roles stay consistent, suggesting a gradual shift toward flexibility with career progression.

- **Remote Jobs Pay Slightly More:**  
  Entry-level remote roles have the highest median salary, followed by hybrid and then on-site roles. However, the difference is small—under $2,000—indicating only a modest financial advantage for remote flexibility.

## Skills Demonstrated

This project allowed me to apply a wide range of data analysis and communication skills in a real-world context. It demonstrates my ability to handle end-to-end workflows—from question design to data querying, visualization, and insight generation.

| Skill / Tool       | How It Was Applied                                                                 |
|--------------------|-------------------------------------------------------------------------------------|
| **SQL**            | Used to filter, group, and transform the dataset; applied advanced queries, CTEs, and window functions to extract trends and calculate growth metrics. |
| **Data Analysis**  | Designed analysis around clear, practical questions; applied statistical reasoning and chose medians over averages to handle outliers. |
| **Tableau**        | Created interactive, clear, and professional visualizations to communicate findings effectively. |
| **Excel**          | Used for quick previews, sanity checks, and initial data exploration.               |
| **Data Storytelling** | Connected each business question with relevant data and visuals to form a coherent narrative. |
| **Documentation**  | Structured the README to be clean, detailed, and beginner-friendly; wrote clear explanations and insights. |
| **Git & GitHub**   | Version-controlled the project, organized files into logical directories, and published work transparently. |

This combination of tools and methods reflects a strong foundation in exploratory data analysis, data communication, and reproducible project structure—skills essential for real-world data science work.

## What I Learned

This project has given me practical, hands-on experience in structuring a real-world data analysis from start to finish. By working with a complex dataset about the global AI job market, I learned how to break down a broad topic into focused, actionable questions and translate them into SQL queries that deliver meaningful results.

I deepened my understanding of:
- How to **transform raw data into insights** through filtering, grouping, and aggregating in SQL
- How to use **Tableau** effectively for clean, communicative, and insightful visualizations
- The importance of **data storytelling**: connecting questions, data, and visuals to form a compelling narrative
- How to design a project that is both **technically sound** and **understandable to non-technical audiences**
- The value of consistent **documentation and structure**, especially when building a portfolio piece

I also realized how even small differences in data (e.g., salary by work mode or country) can reveal valuable trends—if analyzed carefully. Lastly, this project taught me how essential it is to keep asking the "so what?" behind every number in order to extract truly useful insights.

