--Listar artista que utilizador não segue mas que tem pelo menos uma música em comum

.mode columns
.headers ON
.nullvalue NULL

SELECT Artista.nome AS Artista
FROM Artista
WHERE Artista.artistaID in (
  SELECT M.artistaID
  FROM UtilizadorOuveMusica U, MusicaAlbumArtista M
  WHERE U.musicaID = M.musicaID
          AND
        U.username = 'sfisher18'
)
AND Artista.artistaID not in (
  SELECT U.artistaID
  FROM UtilizadorSegueArtista U
  WHERE U.username = 'sfisher18'
)
;

--CREATE VIEW MusicaOuvida AS
--SELECT DISTINCT Musica.musicaID AS musicaID
--FROM Musica, Utilizador JOIN UtilizadorOuveMusica
--ON Utilizador.username = UtilizadorOuveMusica.username AND Musica.musicaID = UtilizadorOuveMusica.musicaID
--WHERE Utilizador.username = 'sfisher18'
--GROUP BY Musica.nome;


--SELECT DISTINCT Artista.nome
--FROM Artista
--WHERE (
--SELECT Artista.nome
--FROM Artista, Utilizador JOIN UtilizadorSegueArtista
--ON Utilizador.username = UtilizadorSegueArtista.username AND Artista.artistaID=UtilizadorSegueArtista.artistaID
--WHERE Utilizador.username = 'sfisher18'
--GROUP BY Artista.nome)<> (

--SELECT DISTINCT Artista.nome
--FROM Artista, MusicaOuvida JOIN MusicaAlbumArtista
--ON Artista.artistaID=MusicaAlbumArtista.artistaID AND MusicaOuvida.musicaID=MusicaAlbumArtista.musicaID
--GROUP BY Artista.nome
--)
--GROUP BY Artista.nome
