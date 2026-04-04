with cte as(
select 2 as a, 1 as b, 1 as cnt 
union all 
select b as a, a+b as b, cnt+1 as cnt from cte where cnt<10 
) 
select a as lucas_numbers from cte;