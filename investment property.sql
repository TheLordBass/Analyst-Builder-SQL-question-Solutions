SELECT property_id, estimated_sale_price - purchase_price  as  profit_loss, sum(estimated_sale_price - purchase_price) over(ORDER by purchase_price) as running_total FROM investment_property;
