SELECT InvoiceLine.invoiceid,
COUNT(*)
FROM invoiceline
INNER JOIN invoice ON
    invoice.invoiceid = invoiceline.invoiceid
GROUP BY
    invoice.invoiceid