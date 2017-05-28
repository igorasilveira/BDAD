.mode columns
.headers ON
.nullvalue NULL

--Albuns com mais de 200 minutos

SELECT Album.nome AS Album, SUM(Musica.duracao) AS DuracaoTotal
FROM MusicaAlbumArtista
LEFT JOIN Album ON MusicaAlbumArtista.albumID=Album.albumID
LEFT JOIN Musica ON MusicaAlbumArtista.musicaID=Musica.musicaID
WHERE DuracaoTotal>200
GROUP BY Album.nome;
