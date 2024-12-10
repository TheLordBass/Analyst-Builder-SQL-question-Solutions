with CTE1 as (
  SELECT DISTINCT company_id, sum(salary) total_salary, 
  CASE
  WHEN  sum(salary) > 200000 then 0.9 
  WHEN sum(salary) BETWEEN 100000 and 199000 then 0.75 
  else 0.60 END as tax_rate from taxes
group by company_id)

SELECT taxes.company_id, employee_id, department, taxes.salary * cte1.tax_rate as taxed_salary
from taxes
left JOIN CTE1 ON taxes.company_id = CTE1.company_id
