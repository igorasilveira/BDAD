.mode columns
.headers ON
.nullvalue NULL

SELECT Musica.nome, Album.ano, Album.nome
FROM Musica, MusicaAlbumArtista, Album
WHERE Musica.musicaID = MusicaAlbumArtista.musicaID
      AND MusicaAlbumArtista.musicaID
      AND Album.albumID = MusicaAlbumArtista.albumID
ORDER BY Album.ano
;
