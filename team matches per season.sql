SELECT season, team1,
COUNT(team1) + COUNT(team2) as total_teams
FROM matches
GROUP BY ROLLUP (season, team1)
ORDER BY season;
