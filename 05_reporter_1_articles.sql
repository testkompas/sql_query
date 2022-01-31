SELECT COUNT(ID)
FROM Artikel
LEFT JOIN Author on Artikel.Author_id = Author.id
where Author.Nama = "Reporter 1";
