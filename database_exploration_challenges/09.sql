-- 9. Which top 3 categories of crime are most likely to go unresolved in Mission District?

SELECT category, COUNT(category) AS count FROM tutorial.sf_crime_incidents_cleandate
WHERE resolution = 'NONE' AND pd_district = 'MISSION'
GROUP BY category
ORDER BY count DESC
LIMIT 3
