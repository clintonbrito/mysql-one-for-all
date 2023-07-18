SELECT
	ROUND(MIN(s.sub_price), 2) AS faturamento_minimo,
    ROUND(MAX(s.sub_price), 2) AS faturamento_maximo,
    ROUND(AVG(s.sub_price), 2) AS faturamento_medio,
    ROUND(SUM(s.sub_price), 2) AS faturamento_total
FROM
	subscription AS s
	INNER JOIN
    users AS u ON u.sub_id = s.sub_id;