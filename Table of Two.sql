with cte as(
select 2 as num 
union all 
select num+2 as num from cte where num<20
) 
select * from cte;