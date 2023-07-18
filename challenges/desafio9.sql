SELECT
	COUNT(ph.user_id) AS musicas_no_historico
FROM
	playback_history AS ph
	INNER JOIN
    users AS u ON ph.user_id = u.user_id
WHERE u.user_name LIKE 'Barbara Liskov';