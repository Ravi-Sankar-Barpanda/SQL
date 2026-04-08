create table T(value int);
insert into T values(1),(2),(3),(4),(5);
with cte as(
select value, 1 as cnt from T 
union all 
select value, cnt+1 as cnt from cte where cnt<2
)
select value from cte order by value;