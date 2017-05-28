.mode columns
.headers ON
.nullvalue NULL

-- listar utilizadores que ouvem maior diversidade de genero


SELECT Genero.nome, COUNT(Genero.GeneroMusicalID) AS numEstilos
FROM Genero, MusicaAlbumArtista
INNER JOIN Musica ON Musica.musicaID=MusicaAlbumArtista.musicaID
INNER JOIN Album ON Album.albumID=MusicaAlbumArtista.albumID
INNER JOIN AlbumGeneroMusical ON AlbumGeneroMusical.albumID = MusicaAlbumArtista.albumID
WHERE AlbumGeneroMusical.GeneroMusicalID = Genero.GeneroMusicalID;
GROUP BY MusicaAlbumArtista.GeneroMusicalID
HAVING numEstilos > 1
ORDER BY numEstilos
;
