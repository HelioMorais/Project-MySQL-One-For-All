SELECT 
	art.artist_name AS artista,
    CASE
		WHEN COUNT(fm.music_id) >= 5  THEN 'A'
        WHEN COUNT(fm.music_id) IN (3, 4)  THEN 'B'
        WHEN COUNT(fm.music_id) IN (1, 2)  THEN 'C'
        WHEN COUNT(fm.music_id) = 0  THEN '-'
	END AS ranking
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb
ON alb.artist_id = art.artist_id
INNER  JOIN SpotifyClone.music AS m
ON m.album_id = alb.album_id
LEFT  JOIN SpotifyClone.favorite_music AS fm
ON fm.music_id = m.music_id
GROUP BY artista
ORDER BY COUNT(fm.music_id) DESC, artista;