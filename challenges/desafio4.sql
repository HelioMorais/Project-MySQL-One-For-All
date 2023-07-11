SELECT 
	u.user_name AS pessoa_usuaria,
    IF(MAX(YEAR(h.history_date)) >= '2021', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.user AS u
ON h.user_id = u.user_id
GROUP BY pessoa_usuaria
HAVING status_pessoa_usuaria >= '2021'
ORDER BY pessoa_usuaria;