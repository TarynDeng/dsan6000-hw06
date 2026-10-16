WITH classified AS (
  SELECT
    type,
    population,
    CASE
      WHEN adm1 IN (
        'Al Bayda''', 'Sana''a', 'Al Dali''', 'Al Hudaydah', 'Al Jawf',
        'Al Mahwit', 'Amanat Al Asimah', 'Amran', 'Dhamar', 'Hajjah',
        'Ibb', 'Ma''rib', 'Raymah', 'Sa''dah', 'Ta''izz'
      ) THEN 'YAR'
      WHEN adm1 IN (
        'Aden', 'Abyan', 'Al Mahrah', 'Hadramawt', 'Lahij', 'Shabwah'
      ) THEN 'PDRY'
    END AS former_country
  FROM dsan6000_hw06.yemen_2020
  WHERE type IN ('elderly_60_plus', 'youth_15_24')
)
SELECT
  type,
  former_country,
  cast(sum(population) AS integer) AS population
FROM classified
WHERE former_country IS NOT NULL
GROUP BY type, former_country
ORDER BY type, former_country;
