-- Summarise sales per year by using a CTE

with cte as (
SELECT 
  strftime('%Y', soldDate) as year,
  sum(salesAmount) as ammountSold
from sales
group by year
)

select 
  year,
  FORMAT("$%.2f", ammountSold)
from cte
