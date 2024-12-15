with cte1 as (
SELECT d.department_name, e.employee_name, e.salary, rank() over(partition by d.department_id ORDER by e.salary desc) as rome
FROM employees e
LEFT join departments d
on e.department_id = d.department_id )
SELECT department_name, employee_name, salary
from cte1
where rome = 2
