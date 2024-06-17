SELECT
`Item Purchased`,
count(`Customer ID`) as items_purchased
FROM shopping_trends_updated
group by 1
order by 2 desc
-- Limit 20
;