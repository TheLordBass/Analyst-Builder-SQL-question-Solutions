WITH CTE AS (
  SELECT type,
       SUM(CASE WHEN state = 'Completed' THEN 1 ELSE 0 END) AS Completed_Requests,
       SUM(CASE WHEN state IN ('In Progress', 'Received') THEN 1 ELSE 0 END) AS Incomplete_Requests
   FROM help_requests
   GROUP BY type
)
SELECT *, (CAST(Completed_Requests AS DECIMAL) / (Incomplete_Requests + Completed_Requests)) * 100 AS Percentage_Completed_Requests
FROM CTE;
