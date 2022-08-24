SELECT 
e.FirstName || " " || e.LastName as FullName,
SUM(i.total) AS TotalSales
FROM employee e 
JOIN customer c 
    ON c.supportrepid = e.employeeid
JOIN invoice i 
    ON i.customerid = c.customerid
GROUP BY fullname

