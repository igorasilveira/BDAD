.mode columns
.headers ON
.nullvalue NULL

-- listar musicas que aparecamm em mais de um album

SELECT Musica.nome, COUNT(Album.albumID) AS numMusicasVariosAlbuns
FROM MusicaAlbumArtista
INNER JOIN Musica ON Musica.musicaID=MusicaAlbumArtista.musicaID
INNER JOIN Album ON Album.albumID=MusicaAlbumArtista.albumID
GROUP BY Musica.nome
HAVING numMusicasVariosAlbuns> 1
ORDER BY numMusicasVariosAlbuns
;
