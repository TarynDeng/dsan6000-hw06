SELECT
  cast(sum(population) AS integer) AS population
FROM dsan6000_hw06.full_2020
WHERE month = '2019-06'
  AND country = 'SAU'
  AND type = 'total_population'
  AND ST_Within(
    ST_Point(longitude, latitude),
    ST_Polygon('POLYGON ((48.7691397 25.9318846,48.1923805 23.9580596,51.0062232 24.4688786,49.6638883 26.8757319,48.4252036 28.4850714,47.5572276 26.3636785,48.052556 24.4482796,48.7691397 25.9318846))')
  );
