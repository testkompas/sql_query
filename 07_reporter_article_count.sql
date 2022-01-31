SELECT Author.*, Article.jumlah_artikel
FROM Author
LEFT JOIN (
    SELECT Author_id, COUNT(ID) as jumlah_artikel
    FROM Artikel
    GROUP BY Author_id
) Article on Author.id = Article.Author_id
where Article.jumlah_artikel = (
    SELECT MAX(Article.jumlah_artikel) 
    FROM (
        SELECT COUNT(ID) as jumlah_artikel
        FROM Artikel
        GROUP BY Author_id
    ) Article
);