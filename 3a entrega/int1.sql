.mode columns
.headers ON
.nullvalue NULL

--Listar Albuns por ano
SELECT Artista.nome as Artista, Album.nome as Album, Album.ano as Ano
FROM Album, MusicaAlbumArtista
JOIN Artista on MusicaAlbumArtista.artistaID = Artista.artistaID
Where Album.albumID=MusicaAlbumArtista.albumID AND Artista.artistaID=MusicaAlbumArtista.artistaID
GROUP BY Album.ano;
