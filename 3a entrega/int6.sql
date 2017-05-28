.mode columns
.headers on
.nullvalue NULL

--utilizadores nascidos na decada de 90 que favoritaram pelo menos um album de heavy metal

SELECT username AS user, dataNascimento AS birth
FROM Utilizador
WHERE date(dataNascimento)
	BETWEEN date('1990-01-01') AND date('2000-01-01')
	AND Utilizador.username in (
		SELECT Utilizador.username
		FROM UtilizadorFavoritaAlbum U, AlbumGeneroMusical I, GeneroMusical M
		WHERE U.username = Utilizador.username
		AND U.albumid = I.albumID
		AND M.GeneroMusicalID = I.GeneroMusicalID
		AND M.nome = 'Heavy Metal'
)

ORDER BY birth
;
