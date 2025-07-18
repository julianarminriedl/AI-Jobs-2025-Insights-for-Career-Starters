SELECT 
DISTINCT job_title,
PERCENTILE_CONT(salary_usd, 0.5) OVER (PARTITION BY job_title) AS salary
FROM test123-459006.CapstoneProject.AiJobData
WHERE experience_level ="EN"
ORDER BY salary DESC
