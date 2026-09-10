# Write your MySQL query statement below
WITH DailySum AS (
    -- Step 1: Pre-aggregate multiple transactions on the same day
    SELECT 
        visited_on, 
        SUM(amount) AS daily_amount
    FROM Customer
    GROUP BY visited_on
)
SELECT 
    visited_on,
    -- Step 2: Calculate 7-day rolling sum (no PARTITION BY)
    SUM(daily_amount) OVER (
        ORDER BY visited_on 
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS amount,
    -- Step 3: Calculate 7-day rolling average rounded to 2 decimal places
    ROUND(AVG(daily_amount) OVER (
        ORDER BY visited_on 
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ), 2) AS average_amount
FROM DailySum
LIMIT 99999 OFFSET 6;