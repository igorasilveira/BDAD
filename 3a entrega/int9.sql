--Listar utilizadores que gostam de todos os albuns de um artista

.mode columns
.headers ON
.nullvalue NULL


SELECT Artista.nome AS Artista, Utilizador.username AS Utilizador
FROM Artista, Utilizador
WHERE Artista.artistaID in (
  SELECT M.artistaID
  FROM UtilizadorFavoritaAlbum U, MusicaAlbumArtista M
  WHERE U.albumID = M.albumID
          AND
        U.username = Utilizador.username
)
ORDER BY Artista
;
