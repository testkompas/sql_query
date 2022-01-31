SELECT Artikel.*, (LENGTH(Artikel.body) - LENGTH(REPLACE(Artikel.body, " ", "")) + 1) as jumlah_kata
FROM Artikel;
