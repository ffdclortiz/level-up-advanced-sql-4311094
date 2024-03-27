SELECT DISTINCT *
from employee e
left join sales s on e.employeeId = s.employeeId
where s.salesId is null
AND e.title = 'Sales Person';