SELECT 
    album_name AS album,
    COUNT(fm.music_id) AS favoritadas
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.music AS m
ON a.album_id = m.album_id
INNER JOIN SpotifyClone.favorite_music AS fm
ON m.music_id = fm.music_id
GROUP BY album
ORDER BY favoritadas DESC LIMIT 3;