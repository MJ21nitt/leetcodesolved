# Write your MySQL query statement below
with queue as (
    select person_name,weight,(sum(weight) over (order by turn)) as Total_weight
     from Queue
)
select person_name from queue where Total_weight<=1000 order by Total_weight desc limit 1;