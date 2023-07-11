SELECT 
	m.music_name AS cancao,
    COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.music AS m
ON h.music_id = m.music_id 
GROUP BY cancao
ORDER BY reproducoes DESC, cancao 
LIMIT 2;