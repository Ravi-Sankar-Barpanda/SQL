with cte as(
select 1 as a, 1 as b, 1 as c, 1 as cnt 
union all 
select b as a, c as b, a+b as c, cnt+1 as cnt from cte where cnt<10 
) 
select a as Padovan_numbers from cte;