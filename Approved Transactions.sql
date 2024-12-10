SELECT FORMAT(transaction_date, 'MM') AS Months, country, 
sum(CASE when state = 'Approved' then  1 else 0 end) as Approved_Transactions,
sum(CASE when state = 'Approved' then  amount else 0 end) as Approved_amount,
sum(CASE when state = 'Declined' then  1 else 0 end) as Chargebacks,
sum(CASE when state = 'Declined' then  amount else 0 end) as Chargeback_Amount
FROM transactions
group by FORMAT(transaction_date, 'MM'), country
