SELECT 
  e.firstName,
  e.lastName,
  m.model,
  strftime('%Y', s.soldDate) as Y,
  --s.salesAmount,
  max(salesAmount),
  min(salesAmount)
from employee e
inner join sales s on s.employeeId = e.employeeId
inner join inventory i on i.inventoryId=s.inventoryId
inner join model m on m.modelId=i.modelId
where Y='2022'
group by Y, e.employeeId
order by soldDate desc;