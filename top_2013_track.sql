SELECT
t.name,
SUM(Total)
FROM track t 
JOIN invoiceline il 
    ON il.trackid = t.trackid
JOIN invoice i 
    ON i.invoiceid = il.invoiceid
WHERE Total = (SELECT MAX(total) FROM Invoice
WHERE invoicedate LIKE '%2013%')