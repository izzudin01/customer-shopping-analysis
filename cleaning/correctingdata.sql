UPDATE shopping_trends_cleaned
SET Gender = 'Male'
WHERE Gender IN ('M', 'male', 'MALE');

UPDATE shopping_trends_cleaned
SET Gender = 'Female'
WHERE Gender IN ('F', 'female', 'FEMALE');