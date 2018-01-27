-- 8. In SF, what pd_district am I most likely to have my car stolen,
-- and on what day of the week is this most likely?

SELECT pd_district, COUNT(pd_district) AS district_count FROM tutorial.sf_crime_incidents_cleandate
WHERE category = 'VEHICLE THEFT'
GROUP BY pd_district
ORDER BY district_count DESC

SELECT day_of_week, COUNT(day_of_week) AS day_count FROM tutorial.sf_crime_incidents_cleandate
WHERE category = 'VEHICLE THEFT'
GROUP BY day_of_week
ORDER BY day_count DESC
