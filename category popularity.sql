SELECT
Category,
count(`Customer ID`) as client_count
FROM shopping_trends_updated
Group By 1
Order by 2
;