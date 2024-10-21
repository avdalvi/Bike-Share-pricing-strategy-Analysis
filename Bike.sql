with cte as(

SELECT * from bike_share_yr_0
union all
SELECT * FROM bike_share_yr_1)

select 
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as Revenue,
riders*price - COGS as profit
from cte a
LEFT JOIN cost_table b
on a.yr = b.yr
