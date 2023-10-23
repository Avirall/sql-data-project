select batting_team,sum(total_runs) as "total runs"
from deliveries
group by batting_team;
