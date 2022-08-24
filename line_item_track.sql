SELECT
i.invoicelineid,
t.name
FROM invoiceline i 
JOIN track t 
    ON i.trackid = t.trackid