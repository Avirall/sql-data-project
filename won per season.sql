select season,winner,count(winner) 
from matches 
group by season,winner 
order by season;
