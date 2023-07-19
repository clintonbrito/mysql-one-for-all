SELECT
	ar.artist_name AS artista,
	al.album_name AS album,
	COUNT(fa.artist_id) AS pessoas_seguidoras
FROM
	albums AS al
	INNER JOIN artists AS ar ON ar.artist_id = al.artist_id
	INNER JOIN following_artists AS fa ON fa.artist_id = ar.artist_id
GROUP BY
	artista, album
ORDER BY
	pessoas_seguidoras DESC, artista ASC, album ASC;