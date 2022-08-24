SELECT
c.FirstName || " " || c.LastName as FullName,
i.InvoiceID
FROM customer c
JOIN invoice i
ON c.customerid = i.customerid