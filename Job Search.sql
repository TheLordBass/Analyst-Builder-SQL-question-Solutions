SELECT *
FROM job_listings
WHERE (job_title LIKE '%Senior%' OR job_title LIKE '%Lead%')
  AND CAST(SUBSTRING(job_salary, 2, CHARINDEX('-', job_salary) - 2) AS INT) >= 85000
  AND required_skills LIKE '%SQL%'
  AND required_skills LIKE '%Python%'
ORDER BY job_id;
