SELECT DISTINCT company_location,  
COUNT(*) AS job_location_count
FROM test123-459006.CapstoneProject.AiJobData
WHERE experience_level = 'EN'
GROUP BY company_location
ORDER BY job_location_count DESC
