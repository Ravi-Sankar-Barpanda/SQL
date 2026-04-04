with cte as(
select 0 as a, 1 as b, 1 as c, 1 as cnt 
union all 
select b as a, c as b, a+b+c as c, cnt+1 as cnt from cte where cnt<10 
) 
select a as tribonacci_numbers from cte;