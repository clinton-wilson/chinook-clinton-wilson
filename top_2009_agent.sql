WITH eSum AS (
SELECT
e.FirstName || " " || e.LastName as FullName,
SUM(i.Total) as TotalSales
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
WHERE invoicedate BETWEEN "2009-01-01" AND "2009-12-31"
GROUP BY FullName)
SELECT
FullName, 
TotalSales
FROM eSum
WHERE TotalSales = (SELECT MAX(TotalSales) 
FROM eSum)