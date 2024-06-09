WITH TopSongsExcluding AS (
    SELECT titleID, top_genre
    FROM SONG
    WHERE top_genre NOT IN ('dance pop', 'alt hip hop')
),
GenreCounts AS (
    SELECT top_genre, COUNT(titleID) AS song_count
    FROM TopSongsExcluding
    GROUP BY top_genre
),
SELECT top_genre, song_count
FROM GenreCounts
WHERE song_count = (
    SELECT MAX(song_count)
    FROM GenreCounts
);