With total as (
SELECT
	Gender,
	count('Customer ID') as client_count 
	
FROM customer_shopping.shopping_trends_updated
Group by 1
Order by 2 desc
)
SELECT
	sum(case when Gender = 'Male' then client_count else 0 end) count_male,
	sum(case when Gender = 'Female' then client_count else 0 end) count_female,
	round(sum(case when Gender = 'Male' then client_count else 0 end)/
		 (sum(case when Gender = 'Male' then client_count else 0 end)
		 + sum(case when Gender = 'Female' then client_count else 0 end)) *100,2) percentage_male,

	round(sum(case when Gender = 'Female' then client_count else 0 end)/
		 (sum(case when Gender = 'Male' then client_count else 0 end)
		 + sum(case when Gender = 'Female' then client_count else 0 end)) *100,2) percentage_female
FROM total;