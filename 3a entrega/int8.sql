--Listar artista que utilizador não segue mas que tem pelo menos uma música em comum

.mode columns
.headers ON
.nullvalue NULL


SELECT Artista.nome AS Artista, Utilizador.username AS Utilizador
FROM Artista, Utilizador
WHERE Artista.artistaID in (
  SELECT M.artistaID
  FROM UtilizadorOuveMusica U, MusicaAlbumArtista M
  WHERE U.musicaID = M.musicaID
          AND
        U.username = Utilizador.username
)
AND Artista.artistaID not in (
  SELECT U.artistaID
  FROM UtilizadorSegueArtista U
  WHERE U.username = Utilizador.username
)
ORDER BY Artista
;
