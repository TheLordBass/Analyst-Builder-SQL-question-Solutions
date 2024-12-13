SELECT p.first_name, p.last_name,
CASE 
WHEN c.email is NULL THEN LOWER(first_name) + '.' + LOWER(last_name) + '@gmail.com'
ELSE c.email END as email
FROM  people p
LEFT JOIN contacts c
ON p.id = c.id
order by email
