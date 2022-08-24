WITH eSum AS (
SELECT
e.FirstName || " " || e.LastName as FullName,
SUM(i.Total) as TotalSales
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
GROUP BY FullName)
SELECT
FullName, 
TotalSales
FROM eSum
WHERE TotalSales = (SELECT MAX(TotalSales) 
FROM eSum)