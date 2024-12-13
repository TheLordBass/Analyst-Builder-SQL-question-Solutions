WITH times_walked AS (
    SELECT owner_name, dog_name, SUM(times_walked) AS total_walks
    FROM walks
    GROUP BY owner_name, dog_name
)
SELECT owner_name,
       CASE WHEN MIN(total_walks) >= 5 THEN 'Good Owner'
            ELSE 'Bad Owner'
       END AS owner_type
FROM times_walked
GROUP BY owner_name
ORDER BY owner_name;
