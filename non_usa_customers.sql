SELECT
c.FirstName,
c.LastName,
c.Country
FROM customer c
WHERE country NOT LIKE '%USA%'