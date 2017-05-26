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
  paisID BLOB,
  FOREIGN KEY (paisID) REFERENCES Pais(paisID)
);

drop table if exists UtilizadorSegueUtilizador;
create table UtilizadorSegueUtilizador (
  username1 VARCHAR(20),
  username2 VARCHAR(20),
  PRIMARY KEY (username1, username2),
  FOREIGN KEY (username1) REFERENCES Utilizador(username),
  FOREIGN KEY (username2) REFERENCES Utilizador(username)
);

drop table if exists ArtistaRelacionaArtista;
create table ArtistaRelacionaArtista (
  aID1 BLOB,
  aID2 BLOB,
  PRIMARY KEY (aID1, aID2),
  FOREIGN KEY (aID1) REFERENCES Artista(aID),
  FOREIGN KEY (aID2) REFERENCES Artista(aID)
);

drop table if exists UtilizadorLocaliza;
create table UtilizadorLocaliza (
  username VARCHAR(20),
  cpGeral VARCHAR(20),
  PRIMARY KEY (username, cpGeral),
  FOREIGN KEY (username) REFERENCES Utilizador(username),
  FOREIGN KEY (cpGeral) REFERENCES Localidade(cpGeral)
);

drop table if exists UtilizadorGuardaPlaylist;
create table UtilizadorGuardaPlaylist (
  username VARCHAR(20),
  plID INT,
  PRIMARY KEY (username, plID),
  FOREIGN KEY (username) REFERENCES Utilizador(username),
  FOREIGN KEY (plID) REFERENCES Playlist(plID)
);

drop table if exists UtilizadorFavoritaMusica;
create table UtilizadorFavoritaMusica (
  username VARCHAR(20),
  muID INT,
  PRIMARY KEY (username, muID),
  FOREIGN KEY (username) REFERENCES Utilizador(username),
  FOREIGN KEY (muID) REFERENCES Musica(muID)
);

drop table if exists UtilizadorOuveMusica;
create table UtilizadorOuveMusica (
  username VARCHAR(20),
  muID INT,
  time_stamp VARCHAR(255) NOT NULL,
  PRIMARY KEY (username, muID),
  FOREIGN KEY (username) REFERENCES Utilizador(username),
  FOREIGN KEY (muID) REFERENCES Musica(muID)
);

drop table if exists UtilizadorFavoritaAlbum;
create table UtilizadorFavoritaAlbum (
  username VARCHAR(20),
  abID INT,
  PRIMARY KEY (username, abID),
  FOREIGN KEY (username) REFERENCES Utilizador(username),
  FOREIGN KEY (abID) REFERENCES Album(abID)
);

drop table if exists UtilizadorSegueArtista;
create table UtilizadorSegueArtista (
  username VARCHAR(20),
  aID BLOB,
  PRIMARY KEY (username, aID),
  FOREIGN KEY (username) REFERENCES Utilizador(username),
  FOREIGN KEY (aID) REFERENCES Artista(aID)
);

drop table if exists Conta;
create table Conta (
  cID BLOB PRIMARY KEY,
  preco FLOAT NOT NULL CHECK(preco>=0),
  dataInicio DATE NOT NULL,
  dataFim DATE NOT NULL CHECK(dataInicio<dataFim),
  utilizador VARCHAR(20) NOT NULL REFERENCES Utilizador(username),
  pagamento VARCHAR(13) NOT NULL REFERENCES pagamento CHECK(pagamento in ('gratuito', 'CartaoCredito', 'Paypal', 'PaysafeCard')),
  tipoConta VARCHAR(8) NOT NULL REFERENCES TipoConta CHECK(tipoConta in ('0.0', '6.99', '10.99'))
);

drop table if exists Pagamento;
create table Pagamento (
  forma VARCHAR(13) PRIMARY KEY CHECK(forma in ('gratuito', 'CartaoCredito', 'Paypal', 'PaysafeCard'))
);

drop table if exists TipoConta;
create table TipoConta (
  precoMensal VARCHAR(8) PRIMARY KEY CHECK(precoMensal in ('0.0', '6.99', '10.99'))
);

drop table if exists Localidade;
create table Localidade (
  cpGeral CHAR(4) PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  paisID INT NOT NULL CHECK(paisID > 0) REFERENCES Pais,
  FOREIGN KEY (paisID) REFERENCES Pais(paisID)
);

drop table if exists Playlist;
create table Playlist (
  plID BLOB PRIMARY KEY,
  nome VARCHAR(255) DEFAULT 'plID'
);

drop table if exists PlaylistGuardaMusica;
create table PlaylistGuardaMusica (
  plID BLOB,
  muID BLOB,
  PRIMARY KEY (plID, muID),
  FOREIGN KEY (plID) REFERENCES Playlist(plID),
  FOREIGN KEY (muID) REFERENCES Musica(muID)
);

drop table if exists Musica;
create table Musica (
  muID BLOB PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  duracao INT NOT NULL CHECK(duracao>0)
);

drop table if exists Album;
create table Album (
  abID BLOB PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  ano INT NOT NULL CHECK(Ano>1900),
  tipoID INT NOT NULL CHECK(tipoID > 0) REFERENCES Tipo(tipoID),
  FOREIGN KEY (tipoID) REFERENCES Tipo(tipoID)
);

drop table if exists AlbumRelacionaAlbum;
create table AlbumRelacionaAlbum (
  abID1 BLOB,
  abID2 BLOB,
  PRIMARY KEY (abID1, abID2),
  FOREIGN KEY (abID1) REFERENCES Album(abID),
  FOREIGN KEY (abID2) REFERENCES Album(abID)
);

drop table if exists AlbumGenero;
create table AlbumGenero (
  abID BLOB,
  genID BLOB,
  PRIMARY KEY (abID, genID),
  FOREIGN KEY (abID) REFERENCES Album(abID),
  FOREIGN KEY (genID) REFERENCES Genero(genID)
);

drop table if exists Artista;
create table Artista (
  aID BLOB PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  biografia VARCHAR(255) DEFAULT 'Sem Informacao',
  paisID BLOB NOT NULL CHECK(paisID>0) REFERENCES pais(paisID),
  FOREIGN KEY (paisID) REFERENCES Pais(paisID)
);

drop table if exists MusicaAlbumArtista;
create table MusicaAlbumArtista (
  muID BLOB,
  abID BLOB,
  aID BLOB,
  PRIMARY KEY (muID, abID, aID),
  FOREIGN KEY (aID) REFERENCES Artista(aID),
  FOREIGN KEY (abID) REFERENCES Album(abID),
  FOREIGN KEY (muID) REFERENCES Musica(muID)
);

drop table if exists Publicitario;
create table Publicitario (
  pID BLOB PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  investimento INT NOT NULL CHECK(investimento>0),
  paisID BLOB NOT NULL CHECK(paisID>0) REFERENCES Pais(paisID),
  FOREIGN KEY (paisID) REFERENCES Pais(paisID)
);

drop table if exists Publicidade;
create table Publicidade (
  pbID BLOB PRIMARY KEY,
  duracao INTEGER NOT NULL CHECK(duracao>0),
  pID BLOB NOT NULL,
  FOREIGN KEY (pID) REFERENCES Publicitario(pID)
);

drop table if exists Pais;
create table Pais (
  paisID BLOB PRIMARY KEY,
  nome VARCHAR(255) UNIQUE
);

drop table if exists Tipo;
create table Tipo (
  tipoID BLOB PRIMARY KEY,
  nome VARCHAR(255) UNIQUE
);

drop table if exists Genero;
create table Genero (
  genID BLOB PRIMARY KEY,
  nome VARCHAR(255) UNIQUE
);
