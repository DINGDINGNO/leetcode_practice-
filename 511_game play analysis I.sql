#use sql_tutorial;
#insert into `Activity` values (1,2,"2016-03-01",5 );
#insert into `Activity` values (1,2,"2016-05-02",6 );
#insert into `Activity` values (2,3,"2017-06-25",1 );
#insert into `Activity` values (3,1,"2016-03-02",0 );
#insert into `Activity` values (3,4,"2018-07-03",5 );

select distinct player_id , min(event_date) as first_login_date
from Activity
group by player_id
order by player_id;
