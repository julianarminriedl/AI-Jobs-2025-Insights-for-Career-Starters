SELECT  
  company_location AS country,
  PERCENTILE_CONT(salary_usd, 0.5) OVER (PARTITION BY company_location) AS median_entry_salary
FROM `test123-459006.CapstoneProject.AiJobData`
WHERE experience_level = 'EN'
QUALIFY ROW_NUMBER() OVER (PARTITION BY company_location ORDER BY NULL) = 1
ORDER BY median_entry_salary DESC