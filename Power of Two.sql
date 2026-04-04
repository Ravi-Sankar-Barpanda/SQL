with cte as(
select 1 as val, 1 as cnt  
union all 
select val*2 as val, cnt+1 as cnt from cte where cnt<10
) 
select val from cte;