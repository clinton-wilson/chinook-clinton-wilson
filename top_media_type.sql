SELECT count(t.MediaTypeId),
mt.name
FROM invoiceline il 
JOIN track t 
    ON t.TrackId = il.TrackId
JOIN MediaType mt
    ON mt.MediaTypeId = t.MediaTypeId
