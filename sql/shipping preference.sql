SELECT 
	`Shipping Type`, COUNT(`Customer ID`) AS purchase_count
FROM shopping_trends_cleaned
group by 1
order by 2 desc;