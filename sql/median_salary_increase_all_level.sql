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