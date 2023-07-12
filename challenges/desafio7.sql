SELECT 
	a.artist_name AS artista,
    alb.album_name AS album,
    COUNT(f.user_id) AS pessoas_seguidoras
FROM SpotifyClone.follower AS f
INNER JOIN SpotifyClone.artist AS a
ON f.artist_id = a.artist_id
INNER JOIN SpotifyClone.album AS alb
ON alb.artist_id = a.artist_id
GROUP BY album, artista
ORDER BY pessoas_seguidoras DESC, artista, album;