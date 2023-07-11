SELECT 
	u.user_name AS pessoa_usuaria,
	COUNT(h.music_id)  AS musicas_ouvidas,
    ROUND(SUM(m.music_duration)/60, 2) AS total_minutos
FROM SpotifyClone.`history` AS h
INNER JOIN SpotifyClone.`user` AS u
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.music AS m
ON h.music_id = m.music_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;