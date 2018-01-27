-- 6.  Write a query (or queries) that compares the average amount of
-- investment raised by companies in SF per quarter to companies in NYC.

SELECT company_city, avg
FROM (SELECT company_city, AVG(raised_amount_usd) AS avg FROM tutorial.crunchbase_investments
WHERE raised_amount_usd IS NOT NULL
GROUP BY company_city
) AS subquery
WHERE subquery.company_city = 'New York' OR subquery.company_city = 'San Francisco'
