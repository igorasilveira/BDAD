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
  FOREIGN KEY (UserName1) REFERENCES Utilizador(UserName),
  FOREIGN KEY (UserName2) REFERENCES Utilizador(UserName)
);

drop table if exists ArtistaRelacionaArtista;
create table ArtistaRelacionaArtista (
  AID1 BLOB,
  AID2 BLOB,
  PRIMARY KEY (AID1, AID2),
  FOREIGN KEY (AID1) REFERENCES Artista(AID),
  FOREIGN KEY (AID2) REFERENCES Artista(AID)
);

drop table if exists ArtistaSegueArtista;
create table ArtistaSegueArtista (
  AID1 BLOB,
  AID2 BLOB,
  PRIMARY KEY (AID1, AID2),
  FOREIGN KEY (AID1) REFERENCES Artista(AID),
  FOREIGN KEY (AID2) REFERENCES Artista(AID)
);

drop table if exists UtilizadorLocaliza;
create table UtilizadorLocaliza (
  UserName VARCHAR(20),
  CPGeral VARCHAR(20),
  PRIMARY KEY (UserName, CPGeral),
  FOREIGN KEY (UserName) REFERENCES Utilizador(UserName),
  FOREIGN KEY (CPGeral) REFERENCES Localidade(CPGeral)
);

drop table if exists UtilizadorGuardaPlaylist;
create table UtilizadorGuardaPlaylist (
  UserName VARCHAR(20),
  PLID INT,
  PRIMARY KEY (UserName, PLID),
  FOREIGN KEY (UserName) REFERENCES Utilizador(UserName),
  FOREIGN KEY (PLID) REFERENCES Playlist(PLID)
);

drop table if exists UtilizadorFavoritaMusica;
create table UtilizadorFavoritaMusica (
  UserName VARCHAR(20),
  MuID INT,
  PRIMARY KEY (UserName, MuID),
  FOREIGN KEY (UserName) REFERENCES Utilizador(UserName),
  FOREIGN KEY (MuID) REFERENCES Musica(MuID)
);

drop table if exists UtilizadorOuveMusica;
create table UtilizadorOuveMusica (
  UserName VARCHAR(20),
  MuID INT,
  Time_Stamp VARCHAR(255) NOT NULL,
  PRIMARY KEY (UserName, MuID),
  FOREIGN KEY (UserName) REFERENCES Utilizador(UserName),
  FOREIGN KEY (MuID) REFERENCES Musica(MuID)
);

drop table if exists UtilizadorFavoritaAlbum;
create table UtilizadorFavoritaAlbum (
  UserName VARCHAR(20),
  AbID INT,
  PRIMARY KEY (UserName, AbID),
  FOREIGN KEY (UserName) REFERENCES Utilizador(UserName),
  FOREIGN KEY (AbID) REFERENCES Album(AbID)
);

drop table if exists UtilizadorSegueArtista;
create table UtilizadorSegueArtista (
  UserName VARCHAR(20),
  AID BLOB,
  PRIMARY KEY (UserName, AID),
  FOREIGN KEY (Username) REFERENCES Utilizador(UserName),
  FOREIGN KEY (AID) REFERENCES Artista(AID)
);

drop table if exists Conta;
create table Conta (
  CID BLOB PRIMARY KEY,
  Preco FLOAT NOT NULL CHECK(Preco>=0),
  DataInicio DATE NOT NULL,
  DataFim DATE NOT NULL CHECK(DataInicio<DataFim),
  Utilizador VARCHAR(20) NOT NULL REFERENCES Utilizador(UserName),
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
  PaisID INT NOT NULL CHECK(PaisID > 0) REFERENCES Pais,
  FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

drop table if exists Playlist;
create table Playlist (
  PLID BLOB PRIMARY KEY,
  Nome VARCHAR(255) DEFAULT 'PLID'
);

drop table if exists PlaylistGuardaMusica;
create table PlaylistGuardaMusica (
  PLID BLOB,
  MuID BLOB,
  PRIMARY KEY (PLID, MuID),
  FOREIGN KEY (PLID) REFERENCES Playlist(PLID),
  FOREIGN KEY (MuID) REFERENCES Musica(MuID)
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
  TipoID INT NOT NULL CHECK(TipoID > 0) REFERENCES Tipo(TipoID),
  FOREIGN KEY (TipoID) REFERENCES Tipo(TipoID)
);

drop table if exists AlbumRelacionaAlbum;
create table AlbumRelacionaAlbum (
  AbID1 BLOB,
  AbID2 BLOB,
  PRIMARY KEY (AbID1, AbID2),
  FOREIGN KEY (AbID1) REFERENCES Album(AbID),
  FOREIGN KEY (AbID2) REFERENCES Album(AbID)
);

drop table if exists AlbumGenero;
create table AlbumGenero (
  AbID BLOB,
  GenID BLOB,
  PRIMARY KEY (AbID, GenID),
  FOREIGN KEY (AbID) REFERENCES Album(AbID),
  FOREIGN KEY (GenID) REFERENCES Genero(GenID)
);

drop table if exists Artista;
create table Artista (
  AID BLOB PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Biografia VARCHAR(255) DEFAULT 'Sem Informacao',
  PaisID BLOB NOT NULL CHECK(PaisID>0) REFERENCES Pais(PaisID),
  FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

drop table if exists MusicaAlbumArtista;
create table MusicaAlbumArtista (
  MuID BLOB,
  AbID BLOB,
  AID BLOB,
  PRIMARY KEY (MuID, AbID, AID),
  FOREIGN KEY (AID) REFERENCES Artista(AID),
  FOREIGN KEY (AbID) REFERENCES Album(AbID),
  FOREIGN KEY (MuID) REFERENCES MUsica(MuID)
);

drop table if exists Publicitario;
create table Publicitario (
  PID BLOB PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Investimento INT NOT NULL CHECK(Investimento>0),
  PaisID BLOB NOT NULL CHECK(PaisID>0) REFERENCES Pais,
  FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

drop table if exists Publicidade;
create table Publicidade (
  PbID BLOB PRIMARY KEY,
  Duracao INTEGER NOT NULL CHECK(Duracao>0),
  PID BLOB NOT NULL,
  FOREIGN KEY (PID) REFERENCES Publicitario(PID)
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
