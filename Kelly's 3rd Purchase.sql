with cte1 as(
  sELECT customer_id, transaction_id , amount, rank() over(partition BY customer_id order by transaction_id ) as rank
  FROM purchases)

select customer_id, transaction_id, amount, amount * 0.67 as discounted_amount
from cte1
  where rank = 3
order by 1 asc
