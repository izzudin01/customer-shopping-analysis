-- age
UPDATE shopping_trends_cleaned
SET Age = 0
WHERE Age IS NULL;

-- gender
UPDATE shopping_trends_cleaned
SET Gender = 'Unknown'
WHERE Gender IS NULL;
