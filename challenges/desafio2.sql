SELECT
	COUNT(DISTINCT s.song_id) AS cancoes,
  COUNT(DISTINCT ar.artist_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM
	songs AS s
		INNER JOIN
	albums AS al ON s.album_id = al.album_id
		INNER JOIN
	artists AS ar ON al.artist_id = ar.artist_id;