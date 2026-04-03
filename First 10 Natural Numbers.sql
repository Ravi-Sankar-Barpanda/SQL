--First 10 Natural Numbers 
with cte as(
select 1 as num 
union all 
select num+1 as num from cte where num<10
)
select * from cte;