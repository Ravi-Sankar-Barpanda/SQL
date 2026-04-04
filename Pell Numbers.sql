with cte as(
select 0 as a, 1 as b, 1 as cnt 
union all 
select b as a, 2*b+a as b, cnt+1 as cnt from cte where cnt<10 
) 
select a as Pell_numbers from cte;