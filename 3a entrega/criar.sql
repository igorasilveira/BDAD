.mode columns
.headers on

drop table if exists Utilizador;
create table Utilizador (
  UserName VARCHAR(20) PRIMARY KEY,
  Email VARCHAR(255) UNIQUE NOT NULL,
  DataNascimento DATE NOT NULL,
  Telefone VARCHAR(255) UNIQUE,
  Password VARCHAR(18) NOT NULL,
  Morada VARCHAR(255) DEFAULT 'N/D'
);

drop table if exists UtilizadorSegueUtilizador;
create table UtilizadorSegueUtilizador (
  UserName1 VARCHAR(20),
  UserName2 VARCHAR(20),
  PRIMARY KEY (UserName1, UserName2),
  FOREIGN KEY (UserName1, UserName2) REFERENCES Utilizador
);

drop table if exists UtilizadorLocaliza;
create table UtilizadorLocaliza (
  UserName VARCHAR(20) REFERENCES Utilizador,
  CPGeral VARCHAR(20) REFERENCES Localidade,
  PRIMARY KEY (UserName, CPGeral)
);

drop table if exists UtilizadorGuardaPlaylist;
create table UtilizadorGuardaPlaylist (
  UserName VARCHAR(20) REFERENCES Utilizador,
  PLID INT REFERENCES Playlist,
  PRIMARY KEY (UserName, PLID)
);

drop table if exists UtilizadorFavoritaMusica;
create table UtilizadorFavoritaMusica (
  UserName VARCHAR(20) REFERENCES Utilizador,
  MuID INT REFERENCES Musica,
  PRIMARY KEY (UserName, MuID)
);

drop table if exists UtilizadorOuveMusica;
create table UtilizadorOuveMusica (
  UserName VARCHAR(20) REFERENCES Utilizador,
  MuID INT REFERENCES Musica,
  Time_Stamp VARCHAR(255) NOT NULL,

  PRIMARY KEY (UserName, MuID)
);

drop table if exists UtilizadorFavoritaAlbum;
create table UtilizadorFavoritaAlbum (
  UserName VARCHAR(20) REFERENCES Utilizador,
  AbID INT REFERENCES Album,
  PRIMARY KEY (UserName, AbID)
);

drop table if exists UtilizadorSegueArtista;
create table UtilizadorSegueArtista (
  UserName VARCHAR(20) REFERENCES Utilizador,
  AID INT REFERENCES Artista,
  PRIMARY KEY (UserName, AID)
);

drop table if exists Conta;
create table Conta (
  CID BLOB PRIMARY KEY,
  Preco FLOAT NOT NULL CHECK(Preco>=0),
  DataInicio DATE NOT NULL,
  DataFim DATE NOT NULL CHECK(DataInicio<DataFim),
  Utilizador VARCHAR(20) NOT NULL REFERENCES Utilizador,
  Pagamento VARCHAR(13) NOT NULL REFERENCES Pagamento CHECK(Pagamento in ('gratuito', 'CartaoCredito', 'Paypal', 'PaysafeCard')),
  TipoConta VARCHAR(8) NOT NULL REFERENCES TipoConta CHECK(TipoConta in ('0.0', '6.99', '10.99'))
);

drop table if exists Pagamento;
create table Pagamento (
  Forma VARCHAR(13) PRIMARY KEY CHECK(Forma in ('gratuito', 'CartaoCredito', 'Paypal', 'PaysafeCard'))
);

drop table if exists TipoConta;
create table TipoConta (
  PrecoMensal VARCHAR(8) PRIMARY KEY CHECK(PrecoMensal in ('0.0', '6.99', '10.99'))
);

drop table if exists Localidade;
create table Localidade (
  CPGeral CHAR(4) PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  PaisID INT NOT NULL CHECK(PaisID > 0) REFERENCES Pais
);

drop table if exists Playlist;
create table Playlist (
  PLID BLOB PRIMARY KEY,
  Nome VARCHAR(255) DEFAULT 'PLID'
);

drop table if exists PlaylistGuardaMusica;
create table PlaylistGuardaMusica (
  PLID BLOB REFERENCES Playlist,
  MuID BLOB REFERENCES Musica,
  PRIMARY KEY (PLID, MuID)
);

drop table if exists Musica;
create table Musica (
  MuID BLOB PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Duracao INT NOT NULL CHECK(Duracao>0)
);

drop table if exists Album;
create table Album (
  AbID BLOB PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Ano INT NOT NULL CHECK(Ano>1900),
  TipoID INT NOT NULL CHECK(TipoID > 0) REFERENCES Tipo
);

drop table if exists AlbumRelacionaAlbum;
create table AlbumRelacionaAlbum (
  AbID1 BLOB,
  AbID2 BLOB,
  PRIMARY KEY (AbID1, AbID2),
  FOREIGN KEY (AbID1, AbID2) REFERENCES Album
);

drop table if exists AlbumGenero;
create table AlbumGenero (
  AbID BLOB REFERENCES Album,
  GenID BLOB REFERENCES Genero,
  PRIMARY KEY (AbID, GenID)
);

drop table if exists Artista;
create table Artista (
  AID BLOB PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Biografia VARCHAR(255) DEFAULT 'Sem Informacao',
  PaisID BLOB NOT NULL CHECK(PaisID>0) REFERENCES Pais
);

drop table if exists ArtistaSegueArtista;
create table ArtistaSegueArtista (
  AID1 BLOB,
  AID2 BLOB,
  PRIMARY KEY (AID1, AID2),
  FOREIGN KEY (AID1, AID2) REFERENCES Artista
);

drop table if exists ArtistaRelacionaArtista;
create table ArtistaRelacionaArtista (
  AID1 BLOB,
  AID2 BLOB,
  PRIMARY KEY (AID1, AID2),
  FOREIGN KEY (AID1, AID2) REFERENCES Artista
);

drop table if exists MusicaAlbumArtista;
create table MusicaAlbumArtista (
  MuID BLOB REFERENCES Musica,
  AbID BLOB REFERENCES Album,
  AID BLOB REFERENCES Artista,
  PRIMARY KEY (MuID, AbID, AID)
);

drop table if exists Publicitario;
create table Publicitario (
  PID BLOB PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Investimento INT NOT NULL CHECK(Investimento>0),
  PaisID BLOB NOT NULL CHECK(PaisID>0) REFERENCES Pais
);

drop table if exists Publicidade;
create table Publicidade (
  PbID BLOB PRIMARY KEY,
  Duracao INTEGER NOT NULL CHECK(Duracao>0),
  PID BLOB NOT NULL REFERENCES Publicitario
);

drop table if exists Pais;
create table Pais (
  PaisID BLOB PRIMARY KEY,
  Nome VARCHAR(255) UNIQUE
);

drop table if exists Tipo;
create table Tipo (
  TipoID BLOB PRIMARY KEY,
  Nome VARCHAR(255) UNIQUE
);

drop table if exists Genero;
create table Genero (
  GenID BLOB PRIMARY KEY,
  Nome VARCHAR(255) UNIQUE
);
