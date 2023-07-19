SELECT
	ar.artist_name AS artista,
  CASE
		WHEN COUNT(fs.song_id) >= 5 THEN 'A'
    WHEN COUNT(fs.song_id) BETWEEN 3 AND 4 THEN 'B'
    WHEN COUNT(fs.song_id) BETWEEN 1 AND 2 THEN 'C'
    WHEN COUNT(fs.song_id) <= 0 THEN '-'
	END AS ranking
FROM
	artists AS ar
  INNER JOIN albums AS al ON ar.artist_id = al.artist_id
  INNER JOIN songs AS s ON al.album_id = s.album_id
  LEFT JOIN favorite_songs AS fs ON fs.song_id = s.song_id
GROUP BY
	ar.artist_name
ORDER BY
	COUNT(fs.song_id) DESC, ar.artist_name ASC;