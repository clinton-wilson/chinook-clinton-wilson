SELECT
i.total,
c.FirstName || " " || c.LastName as CustomerFullName,
c.country,
e.FirstName || " " || e.LastName as EmployeeFullName
FROM customer c
JOIN invoice i
    ON c.customerid = i.customerid
JOIN employee e 
    ON c.supportrepid = e.employeeid