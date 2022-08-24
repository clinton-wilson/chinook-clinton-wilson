SELECT MAX(TotalSales)
FROM (
SELECT i.billingcountry AS Country,
sum(Total) AS TotalSales
FROM invoice i)

