-- BDAD @ MIEIC, grupo 203
-- TRIGGER 3 - ADICIONA
-- Ao seguir um utilizador, é criada uma playlist propria com as musicas favoritas do utilizador seguido

CREATE TRIGGER generate_playlist
AFTER INSERT ON UtilizadorSegueUtilizador
For each row
WHEN (select count(musicaID) from UtilizadorFavoritaMusica where username = NEW.username2) <> 0
BEGIN
   insert into Playlist (nome, criador) values (datetime('now'), NEW.username1);

     insert into PlaylistGuardaMusica (playlistID, musicaID)
     select distinct playlistID, musicaID from Playlist JOIN  UtilizadorFavoritaMusica
     ON
     nome = 'GENERATED_AUTOMATICALLY' AND criador = NEW.username1 AND UtilizadorFavoritaMusica.username = NEW.username2;


END;
