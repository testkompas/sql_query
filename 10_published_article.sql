SELECT Artikel.*
FROM Artikel
LEFT JOIN table_status on Artikel.status = table_status.id
WHERE table_status.status = "publish";