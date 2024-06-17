SELECT 
    Season, COUNT(`Customer ID`) AS purchase_count
FROM
    shopping_trends_updated
GROUP BY 1
ORDER BY 2 DESC
;