SELECT ctr.continent, FLOOR(AVG(cit.population)) AS avg_p
FROM city cit
JOIN country ctr
ON cit.countrycode = ctr.code
GROUP BY ctr.continent;
