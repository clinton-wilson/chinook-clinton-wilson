SELECT Playlist.Name,
COUNT(*)
FROM PlaylistTrack
INNER JOIN Playlist ON
    Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY
    PlaylistTrack.PlaylistId