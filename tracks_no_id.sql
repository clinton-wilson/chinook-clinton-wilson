SELECT
t.Name,
t.AlbumId,
t.MediaTypeId,
t.GenreId,
t.Composer,
t.Milliseconds,
t.Bytes,
t.UnitPrice,
a.Title as AlbumTitle,
m.Name AS MediaType,
g.Name as Genre
FROM track t
JOIN Album a 
    ON a.AlbumId = t.AlbumId
JOIN MediaType m 
    ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g 
    ON g.GenreId = t.GenreId