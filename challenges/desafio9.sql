SELECT 
	count(h.music_id) AS musicas_no_historico
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.user AS u
ON h.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';