SELECT
  min(latitude) AS min_latitude,
  min(longitude) AS min_longitude,
  max(latitude) AS max_latitude,
  max(longitude) AS max_longitude,
  cast(sum(population) AS integer) AS population
FROM dsan6000_hw06.yemen_2020
WHERE
  type = 'total_population'
  AND ST_Within(
    ST_Point(longitude, latitude),
    ST_Polygon('POLYGON ((48.9217315 16.4959637,47.0912951 16.8891385,46.4109098 15.6302726,47.8048725 15.7062077,47.5192926 14.7207295,48.6421351 14.121234,52.1036895 15.6338102,52.1434259 16.3281888,53.01473 16.6992329,51.9552926 18.989808,49.1123777 18.5718297,48.1353511 18.1399509,47.1250584 16.9012921,48.9217315 16.4959637))')
  );
