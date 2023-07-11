SELECT 
	COUNT(mu.music_id) AS cancoes,
    COUNT(DISTINCT(art.artist_id)) AS artistas,
	COUNT(DISTINCT(alb.album_id)) AS albuns
  FROM 
	SpotifyClone.music AS mu
INNER JOIN 
	SpotifyClone.album AS alb
  ON 
	mu.album_id = alb.album_id
INNER JOIN 
	SpotifyClone.artist AS art
  ON 
	alb.artist_id = art.artist_id;