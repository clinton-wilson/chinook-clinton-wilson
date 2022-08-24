SELECT 
    SUM(total)
FROM invoice
WHERE invoicedate LIKE '%2009%' OR '%2011%'