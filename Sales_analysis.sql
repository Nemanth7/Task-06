-- SQL script for monthly sales trend analysis

SELECT
    SUBSTR("Order_date", 7, 4) AS Year,
    SUBSTR("Order_date", 4, 2) AS Month,
    SUM(Sales) AS "Monthly Revenue",
    COUNT(DISTINCT "Order_ID") AS "Order Volume"
FROM
    Online_sales
GROUP BY
    Year, Month
ORDER BY
    Year, Month;