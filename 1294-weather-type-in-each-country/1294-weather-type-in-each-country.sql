# Write your MySQL query statement below
SELECT country_name, case when AVG(weather_state*1.0)<=15.0 then 'Cold'
					when AVG(weather_state*1.0)>=25.0 then 'Hot'
					else 'Warm'
			        end AS weather_type
FROM Countries AS c
INNER JOIN Weather AS w
ON c.country_id = w.country_id
WHERE day BETWEEN '2019-11-01' AND '2019-11-30'
GROUP BY country_name
