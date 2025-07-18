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