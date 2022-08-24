SELECT
i.billingcountry AS Country,
SUM(Total) AS TotalSales
FROM invoice i
GROUP BY Country