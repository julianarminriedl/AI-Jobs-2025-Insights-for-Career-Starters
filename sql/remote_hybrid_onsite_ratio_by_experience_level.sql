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
