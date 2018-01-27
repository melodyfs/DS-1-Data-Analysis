-- 7. What is the max/min/average
-- amount of investment money raised by companies in SF that have been acquired at some point?

-- Max
SELECT inv.company_city, MAX(raised_amount_usd)
FROM tutorial.crunchbase_investments inv
JOIN tutorial.crunchbase_acquisitions acq
ON inv.company_name = acq.company_name
WHERE inv.raised_amount_usd IS NOT NULL AND inv.company_city = 'San Francisco'
GROUP BY inv.company_city

-- Min
SELECT inv.company_city, MIN(raised_amount_usd)
FROM tutorial.crunchbase_investments inv
JOIN tutorial.crunchbase_acquisitions acq
ON inv.company_name = acq.company_name
WHERE inv.raised_amount_usd IS NOT NULL AND inv.company_city = 'San Francisco'
GROUP BY inv.company_city

-- Avg
SELECT inv.company_city, AVG(raised_amount_usd)
FROM tutorial.crunchbase_investments inv
JOIN tutorial.crunchbase_acquisitions acq
ON inv.company_name = acq.company_name
WHERE inv.raised_amount_usd IS NOT NULL AND inv.company_city = 'San Francisco'
GROUP BY inv.company_city
