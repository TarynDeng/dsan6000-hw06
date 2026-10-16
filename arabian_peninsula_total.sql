SELECT
  cast(sum(population) AS integer) AS population
FROM dsan6000_hw06.full_2020
WHERE month = '2019-06'
  AND country IN ('YEM', 'OMN', 'SAU')
  AND type = 'total_population';
