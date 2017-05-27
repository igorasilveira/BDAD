.mode columns
.headers on

drop table if exists Utilizador;
create table Utilizador (
  username VARCHAR(20) PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  dataNascimento DATE NOT NULL,
  telefone VARCHAR(255) UNIQUE,
  password VARCHAR(18) NOT NULL,
  morada VARCHAR(255) DEFAULT 'N/D',
  paisID INTEGER,
  codigoPostal CHAR(4) DEFAULT '0000',
  FOREIGN KEY (paisID) REFERENCES Pais(paisID) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (codigoPostal) REFERENCES Localidade(codigoPostal) ON DELETE SET NULL ON UPDATE CASCADE
);

drop table if exists UtilizadorSegueUtilizador;
create table UtilizadorSegueUtilizador (
  username1 VARCHAR(20),
  username2 VARCHAR(20),
  PRIMARY KEY (username1, username2),
  FOREIGN KEY (username1) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (username2) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists ArtistaRelacionaArtista;
create table ArtistaRelacionaArtista (
  artistaID1 INTEGER,
  artistaID2 INTEGER,
  PRIMARY KEY (artistaID1, artistaID2),
  FOREIGN KEY (artistaID1) REFERENCES Artista(artistaID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (artistaID2) REFERENCES Artista(artistaID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists UtilizadorGuardaPlaylist;
create table UtilizadorGuardaPlaylist (
  username VARCHAR(20),
  playlistID INTEGER,
  PRIMARY KEY (username, playlistID),
  FOREIGN KEY (username) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (playlistID) REFERENCES Playlist(playlistID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists UtilizadorFavoritaMusica;
create table UtilizadorFavoritaMusica (
  username VARCHAR(20),
  musicaID INTEGER,
  PRIMARY KEY (username, musicaID),
  FOREIGN KEY (username) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (musicaID) REFERENCES Musica(musicaID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists UtilizadorOuveMusica;
create table UtilizadorOuveMusica (
  username VARCHAR(20),
  musicaID INTEGER,
  time_stamp DATE NOT NULL,
  PRIMARY KEY (username, musicaID, time_stamp),
  FOREIGN KEY (username) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (musicaID) REFERENCES Musica(musicaID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists UtilizadorFavoritaAlbum;
create table UtilizadorFavoritaAlbum (
  username VARCHAR(20),
  albumID INTEGER,
  PRIMARY KEY (username, albumID),
  FOREIGN KEY (username) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (albumID) REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists UtilizadorSegueArtista;
create table UtilizadorSegueArtista (
  username VARCHAR(20),
  artistaID INTEGER,
  PRIMARY KEY (username, artistaID),
  FOREIGN KEY (username) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (artistaID) REFERENCES Artista(artistaID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists Conta;
create table Conta (
  contaID INTEGER PRIMARY KEY AUTOINCREMENT,
  preco FLOAT NOT NULL CHECK (preco>=0.00),
  dataInicio DATE NOT NULL,
  dataFim DATE CHECK (dataFim > dataInicio) DEFAULT 'N/D',
  username VARCHAR(20) NOT NULL REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE,
  pagamento VARCHAR(13) NOT NULL REFERENCES pagamento ON DELETE CASCADE ON UPDATE CASCADE CHECK(pagamento in ('gratuito', 'CartaoCredito', 'Paypal', 'PaysafeCard')),
  tipoConta FLOAT NOT NULL REFERENCES TipoConta ON DELETE CASCADE ON UPDATE CASCADE CHECK(tipoConta in (0.00, 6.99))
);

drop table if exists Pagamento;
create table Pagamento (
  forma VARCHAR(13) PRIMARY KEY CHECK(forma in ('gratuito', 'CartaoCredito', 'Paypal', 'PaysafeCard'))
);

drop table if exists TipoConta;
create table TipoConta (
  precoMensal FLOAT PRIMARY KEY CHECK(precoMensal in (0.00, 6.99))
);

drop table if exists Localidade;
create table Localidade (
  codigoPostal CHAR(4) PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);

drop table if exists Playlist;
create table Playlist (
  playlistID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) DEFAULT 'playme',
  criador VARCHAR(20),
  FOREIGN KEY (criador) REFERENCES Utilizador(username) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists PlaylistGuardaMusica;
create table PlaylistGuardaMusica (
  playlistID INTEGER,
  musicaID INTEGER,
  PRIMARY KEY (playlistID, musicaID),
  FOREIGN KEY (playlistID) REFERENCES Playlist(playlistID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (musicaID) REFERENCES Musica(musicaID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists Musica;
create table Musica (
  musicaID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) NOT NULL,
  duracao INT NOT NULL CHECK(duracao>0)
);

drop table if exists Album;
create table Album (
  albumID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) NOT NULL,
  ano INT NOT NULL CHECK(Ano>1900),
  tipoAlbumID INT NOT NULL CHECK(tipoAlbumID > 0),
  FOREIGN KEY (tipoAlbumID) REFERENCES Tipo(tipoAlbumID) ON DELETE SET NULL ON UPDATE CASCADE
);

drop table if exists AlbumRelacionaAlbum;
create table AlbumRelacionaAlbum (
  albumID1 INTEGER,
  albumID2 INTEGER,
  PRIMARY KEY (albumID1, albumID2),
  FOREIGN KEY (albumID1) REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (albumID2) REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists AlbumGeneroMusical;
create table AlbumGeneroMusical (
  albumID INTEGER,
  generoMusicalID INTEGER,
  PRIMARY KEY (albumID, generoMusicalID),
  FOREIGN KEY (albumID) REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (generoMusicalID) REFERENCES GeneroMusical(generoMusicalID) ON DELETE SET NULL ON UPDATE CASCADE
);

drop table if exists Artista;
create table Artista (
  artistaID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) NOT NULL,
  biografia VARCHAR(255) DEFAULT 'Sem Informacao',
  paisID INTEGER NOT NULL CHECK(paisID>0),
  FOREIGN KEY (paisID) REFERENCES Pais(paisID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists MusicaAlbumArtista;
create table MusicaAlbumArtista (
  musicaID INTEGER,
  albumID INTEGER,
  artistaID INTEGER,
  PRIMARY KEY (musicaID, albumID, artistaID),
  FOREIGN KEY (artistaID) REFERENCES Artista(artistaID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (albumID) REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (musicaID) REFERENCES Musica(musicaID) ON DELETE CASCADE ON UPDATE CASCADE
);


drop table if exists Publicitario;
create table Publicitario (
  publicitarioID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) NOT NULL,
  investimento INT NOT NULL CHECK(investimento>0),
  paisID INTEGER NOT NULL CHECK(paisID>0),
  FOREIGN KEY (paisID) REFERENCES Pais(paisID) ON DELETE CASCADE ON UPDATE CASCADE
);

drop table if exists Publicidade;
create table Publicidade (
  publicidadeID INTEGER PRIMARY KEY AUTOINCREMENT,
  duracao INTEGER NOT NULL CHECK(duracao>0),
  publicitarioID INTEGER NOT NULL,
  FOREIGN KEY (publicitarioID) REFERENCES Publicitario(publicitarioID) ON DELETE SET NULL ON UPDATE CASCADE
);

drop table if exists Pais;
create table Pais (
  paisID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) UNIQUE
);

drop table if exists Tipo;
create table Tipo (
  tipoAlbumID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) UNIQUE
);

drop table if exists GeneroMusical;
create table GeneroMusical (
  generoMusicalID INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(255) UNIQUE
);
