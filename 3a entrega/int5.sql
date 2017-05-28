.mode columns
.headers ON
.nullvalue NULL

-- Pares de utilizadores que têm mais de uma músicas em comum

SELECT DISTINCT U1.username AS User1, U2.username AS User2, Musica.nome AS Musica
FROM UtilizadorFavoritaMusica AS U1
JOIN Musica ON U1.musicaID=Musica.musicaID
JOIN UtilizadorFavoritaMusica AS U2
ON U1.username>U2.username AND U1.musicaID=U2.musicaID
ORDER BY user1, user2, Musica
;
