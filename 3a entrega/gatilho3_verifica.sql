-- BDAD @ MIEIC, grupo 203
-- TRIGGER 3 - ADICIONA
-- Ao seguir um utilizador, é criada uma playlist propria com as musicas favoritas do utilizador seguido

select PlaylistGuardaMusica.musicaID from PlaylistGuardaMusica, Playlist
where (Playlist.criador = 'jcook11' and PlaylistGuardaMusica.playlistID = Playlist.playlistID);

insert into UtilizadorSegueUtilizador (username1, username2) values ('jcook11', 'rkelleyj');

  select PlaylistGuardaMusica.musicaID from PlaylistGuardaMusica, Playlist
  where (Playlist.criador = 'jcook11' and PlaylistGuardaMusica.playlistID = Playlist.playlistID);
