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