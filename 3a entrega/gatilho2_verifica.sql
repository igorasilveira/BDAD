-- BDAD @ MIEIC, grupo 203
-- TRIGGER 2 - ADICIONA
-- Um utilizador ao guardar uma playlist fica automaticamente a seguir o criador da mesma

SELECT * FROM UtilizadorSegueUtilizador;

insert into UtilizadorGuardaPlaylist (username, playlistID) values ('sfisher18', 14);

SELECT * FROM UtilizadorSegueUtilizador;
