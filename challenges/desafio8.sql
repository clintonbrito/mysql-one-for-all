SELECT
	ar.artist_name AS artista,
	al.album_name AS album
FROM
	artists AS ar
	INNER JOIN albums AS al ON al.artist_id = ar.artist_id
WHERE
	artist_name LIKE 'Elis Regina'
GROUP BY
	artista, album
ORDER BY
	album ASC;