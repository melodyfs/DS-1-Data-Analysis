SELECT SUM(cit.population)
FROM city cit
JOIN country ctr
ON cit.countrycode = ctr.code
WHERE ctr.continent = 'Asia'
GROUP BY ctr.continent;
