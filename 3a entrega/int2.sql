.mode columns
.headers ON
.nullvalue NULL

--Albuns com mais de 30 minutos


SELECT Album.nome as Album, SUM(Musica.duracao) as DuracaoTotal
FROM Album, Musica JOIN MusicaAlbumArtista
ON MusicaAlbumArtista.albumID=Album.albumID
AND MusicaAlbumArtista.musicaID=Musica.musicaID
GROUP BY Album.nome
HAVING DuracaoTotal>1800
ORDER BY DuracaoTotal
;
