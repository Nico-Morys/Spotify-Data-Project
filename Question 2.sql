SELECT COUNT(song.titleID) AS Number_of_Songs
FROM SONG
WHERE BPM >= 75 AND BPM <= 115
;