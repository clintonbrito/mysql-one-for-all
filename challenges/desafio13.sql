SELECT
	CASE
		WHEN u.age <= 30 THEN 'Até 30 anos'
    WHEN u.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
	END AS faixa_etaria,
  COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
  COUNT(fs.user_id) AS total_favoritadas
FROM
	users AS u
  LEFT JOIN favorite_songs AS fs ON fs.user_id = u.user_id
GROUP BY
	faixa_etaria
ORDER BY
	faixa_etaria;