SELECT u.country, count(u.country)
FROM umpires u
INNER JOIN (
    SELECT umpire1 AS umpire FROM matches
    UNION
    SELECT umpire2 AS umpire FROM matches
) as t
ON t.umpire = u.umpire                                                     
WHERE u.country != ' India'
GROUP BY u.country;
