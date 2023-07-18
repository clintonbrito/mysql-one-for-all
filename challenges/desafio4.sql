SELECT
	u.user_name AS pessoa_usuaria,
    IF(YEAR(MAX(ph.playback_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
	users AS u
	INNER JOIN
    playback_history AS ph ON ph.user_id = u.user_id
GROUP BY
	pessoa_usuaria
ORDER BY
	pessoa_usuaria;