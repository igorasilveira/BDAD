--Listar artista que utilizador não segue mas que tem pelo menos uma música em comum



SELECT Artista.nome, Utilizador.username
FROM Artista, Utilizador JOIN UtilizadorSegueArtista 
ON Utilizador.username = UtilizadorSegueArtista.username AND Artista.artistaID=UtilizadorSegueArtista.artistaID
WHERE Utilizador.username = 'sfisher18'
GROUP BY Artista.nome