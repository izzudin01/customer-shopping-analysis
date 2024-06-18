UPDATE shopping_trends_cleaned
SET
    `Customer ID` = TRIM(`Customer ID`),
    Gender = TRIM(Gender),
    `Item Purchased` = TRIM(`Item Purchased`),
    Category = TRIM(Category),
    Season = TRIM(Season),
    `Payment Method` = TRIM(`Payment Method`),
    `Shipping Type` = TRIM(`Shipping Type`);
