SELECT 
COUNT(il.TrackId) AS Purchases,
t.Name
FROM InvoiceLine il
JOIN Track t 
    ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY Purchases DESC
LIMIT 5