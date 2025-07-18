SELECT DISTINCT job_title,  
COUNT(*) AS job_post_count
FROM test123-459006.CapstoneProject.AiJobData
WHERE experience_level = 'EN'
GROUP BY job_title
ORDER BY job_post_count DESC
