SELECT 
  e.firstName,
  e.lastName,
  e.managerId,
  m.firstName,
  m.lastName
FROM employee e
INNER JOIN employee m ON e.managerId = m.employeeId;