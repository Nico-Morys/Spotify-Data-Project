SELECT Artist.artist, COUNT(ArtistID) AS top_100_count
From Artist
GROUP BY Artist.artist
ORDER BY top_100_count DESC
;