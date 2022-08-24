SELECT 
COUNT(SupportRepId) AS NumberOfCustomers,
e.FirstName || " " || e.LastName as FullName
FROM Customer c
JOIN employee e 
    ON e.EmployeeId = c.SupportRepId
GROUP BY FullName