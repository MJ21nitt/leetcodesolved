# Write your MySQL query statement below
with x as (
    select id, 
    num,
    lead(num) over (order by id) as next,
    lead(num,2) over (order by id) as nextnext
    from Logs
)
select distinct(num) as ConsecutiveNums from x
where num=next and next=nextnext;

