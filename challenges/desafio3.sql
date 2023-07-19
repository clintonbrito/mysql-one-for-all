SELECT
	u.user_name AS pessoa_usuaria,
	COUNT(ph.user_id) AS musicas_ouvidas,
	ROUND(SUM(s.duration_seconds / 60), 2) AS total_minutos
FROM
	users AS u
	INNER JOIN playback_history AS ph ON ph.user_id = u.user_id
	INNER JOIN songs AS s ON s.song_id = ph.song_id
GROUP BY
	u.user_name
ORDER BY
	u.user_name ASC;