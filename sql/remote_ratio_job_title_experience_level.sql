SELECT
  job_title,
  experience_level,
  COUNTIF(remote_ratio = 100) AS remote,
  COUNTIF(remote_ratio = 50) AS hybrid,
  COUNTIF(remote_ratio = 0) AS on_site,
   COUNTIF(remote_ratio = 100) / (
    COUNTIF(remote_ratio = 100) +
    COUNTIF(remote_ratio = 50) +
    COUNTIF(remote_ratio = 0)) AS remote_ratio
FROM
  test123-459006.CapstoneProject.AiJobData
GROUP BY
  job_title,
  experience_level
ORDER BY
  remote DESC;

