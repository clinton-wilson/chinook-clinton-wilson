SELECT
i.invoicelineid,
t.name,
a.name
FROM invoiceline i 
JOIN track t 
    ON i.trackid = t.trackid
JOIN album
    ON t.albumid = album.albumid
JOIN artist a 
    ON album.artistid = a.artistid