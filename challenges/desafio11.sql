SELECT
	a.album_name AS album,
    COUNT(fs.song_id) AS favoritadas
FROM
	albums AS a
    INNER JOIN songs AS s ON a.album_id = s.album_id
	INNER JOIN favorite_songs AS fs ON fs.song_id = s.song_id
GROUP BY
	album
ORDER BY
	favoritadas DESC, album ASC
LIMIT 3;