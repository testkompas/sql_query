SELECT Artikel.*, meta1.Meta_value as Sponsor, meta2.Meta_value as Sumber
FROM Artikel
LEFT JOIN meta_artikel meta1 on Artikel.id = meta1.Post_id and meta1.Meta_key = "sponsor"
LEFT JOIN meta_artikel meta2 on Artikel.id = meta2.Post_id and meta2.Meta_key = "Sumber"
where Artikel.id = 1;