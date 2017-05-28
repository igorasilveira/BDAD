-- BDAD @ MIEIC, grupo 203
-- TRIGGER 2 - ADICIONA
-- Um utilizador ao guardar uma playlist fica automaticamente a seguir o criador da mesma

CREATE TRIGGER follow_playlist_creator
AFTER INSERT ON UtilizadorGuardaPlaylist
For each row
BEGIN
  INSERT into UtilizadorSegueUtilizador values (NEW.username,
     (SELECT username FROM Utilizador, Playlist
     WHERE
     Utilizador.username = Playlist.criador
     AND
     Playlist.playlistID = NEW.playlistID
   ));
END;
