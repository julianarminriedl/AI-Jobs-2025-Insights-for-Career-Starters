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