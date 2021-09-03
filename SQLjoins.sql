--join practice

--INNER JOIN

SELECT c.code, name, region, year, fertility_rate
  FROM countries AS c
  INNER JOIN populations AS p
    ON c.code = p.country_code;

	-- self join
SELECT p1.country_code,
       p1.size AS size2010,
       p2.size AS size2015
FROM populations AS p1
  INNER JOIN populations AS p2
    ON  p1.country_code = p2.country_code;

	--left join
	SELECT c.name, c.region, e.gdp_percapita
FROM countries AS c
  LEFT JOIN economies AS e
    ON e.code = c.code
WHERE year = '2010';

-- union
SELECT *
  FROM economies2010
	union
SELECT *
  FROM economies2015
Order by code, year;


-- intersect
Select name
  from countries
	intersect
Select name as country
  from cities;