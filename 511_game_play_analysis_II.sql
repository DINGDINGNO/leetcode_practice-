select distinct a.player_id , a.device_id
from ( select player_id,device_id, dense_rank() over(partition by player_id order by event_date) as rk 
	   from Activity) as a
where rk = 1 ;