SELECT DISTINCT user_id
FROM users
WHERE user_id NOT IN (
    SELECT DISTINCT user_id
    FROM users
    WHERE activity_date >= '2022-01-01'
)
  ORDER BY user_id;
