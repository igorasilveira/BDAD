.mode columns
.headers ON
.nullvalue NULL


SELECT Album.nome, count(*) as contaMusicas
FROM Album, Musica JOIN MusicaAlbumArtista
ON Album.albumID=MusicaAlbumArtista.albumID AND Musica.musicaID=MusicaAlbumArtista.musicaID
GROUP BY Album.nome
ORDER BY count(*) DESC;
