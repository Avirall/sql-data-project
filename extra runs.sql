select d.bowling_team,
sum(d.extra_runs) -sum(legbye_runs)-sum(bye_runs) 
from deliveries d 
inner join matches m 
on d.match_id=m.id 
where season=2016 
group by bowling_team;
