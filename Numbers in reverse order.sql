with cte as(
select 10 as num 
union all 
select num-1 as num from cte where num>1 
)
select * from cte;