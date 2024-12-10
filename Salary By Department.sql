SELECT last_name, first_name, department, salary, avg(CAST(salary as DECIMAL))  over(partition by department) as dept_avg
FROM employee_salary
ORDER BY 3 asc, 4 DESC
