select batsman,sum(batsman_runs) 
from deliveries 
where batting_team like 'Royal Challengers Bangalore' 
group by batsman 
order by sum(batsman_runs) desc 
limit 10;
