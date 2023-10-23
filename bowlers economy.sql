select d.bowler,
(sum(d.total_runs) -sum(d.legbye_runs)-sum(d.bye_runs))/(count(d.ball)/6) as economy 
from deliveries d 
inner join matches m 
on d.match_id=m.id 
where m.season=2015 
group by d.bowler 
order by economy 
limit 10;
