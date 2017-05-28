PRAGMA foreign_keys = ON;

insert into Pais (nome) values ('Portugal');
insert into Pais (nome) values ('Inglaterra');
insert into Pais (nome) values ('Estados Unidos');
insert into Pais (nome) values ('Espanha');
insert into Pais (nome) values ('Belgica');
insert into Pais (nome) values ('Hungria');
insert into Pais (nome) values ('Japao');
insert into Pais (nome) values ('China');
insert into Pais (nome) values ('Brasil');


insert into Localidade (codigoPostal, nome) values ('0000', 'Unknown');
insert into Localidade (codigoPostal, nome) values ('4430', 'Valadares');
insert into Localidade (codigoPostal, nome) values ('4325', 'Cambridge');
insert into Localidade (codigoPostal, nome) values ('1230', 'California');
insert into Localidade (codigoPostal, nome) values ('7965', 'Barcelona');
insert into Localidade (codigoPostal, nome) values ('6894', 'Rio de Janeiro');
insert into Localidade (codigoPostal, nome) values ('0012', 'Kyoto');


insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('rfox0', 'joliver0@yandex.ru', '1998-05-18', '351-(802)416-0564', 'cL9sYi', '4430', '3909 Cardinal Street', 1);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('ahernandez1', 'bgonzalez1@berkeley.edu', '1984-10-15', '33-(209)576-3128', 'LYytMaFcdOfq', '4325', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('dwheeler2', 'sjacobs2@adobe.com', '1974-06-09', '7-(152)392-1188', 'W4OMmOIX', '1230', '32 Sommers Park', 3);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('ccrawford3', 'lharrison3@ebay.co.uk', '1966-09-28', '51-(777)672-9359', 'GQ9Ttzc5pQqj', '7965', '08236 Bartelt Avenue', 4);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('cday4', 'srichardson4@feedburner.com', '1983-11-21', '93-(666)529-9442', 'B74Bsj7', '4325', '181 Chinook Place', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('mnguyen5', 'lgibson5@eepurl.com', '1983-01-07', '63-(449)906-4763', 'Rn7zb8xR8', '0000', '4 Nobel Park', 8);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('kmason6', 'rmendoza6@flickr.com', '1994-10-16', '1-(804)338-5280', 'EzchTUQ', '6894', '904 Quincy Hill', 9);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('mfoster7', 'emurray7@posterous.com', '1974-11-22', '62-(884)998-6231', 'Rnu9nar7hyQ', '0012', '69561 Tomscot Center', 7);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('gsimpson8', 'fmccoy8@instagram.com', '1974-07-30', '86-(224)821-0603', '2YaukZky1', '0000', '815 International Lane', 6);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('swilliamson9', 'medwards9@utexas.edu', '1994-12-08', '63-(839)683-0012', 'NeGe1xOBaw0e', '7965', '20 Comanche Road', 4);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('tmitchella', 'rparkera@gravatar.com', '1951-02-24', '62-(442)177-8614', 'NqcRSPICUV', '0000', 8);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('lmccoyb', 'priverab@businessweek.com', '2001-11-21', '57-(187)813-6779', '82zEg616', '4325', '8374 Derek Place', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('rhansonc', 'srosec@printfriendly.com', '1959-04-02', '86-(335)179-7347', '9dlMrRe5pYL', '7965', '68611 Calypso Junction', 4);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('sowensd', 'rcoxd@geocities.com', '1992-11-16', '46-(580)450-4209', 'MXTBk4', '0012', '189 Sutherland Crossing', 7);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('jrodrigueze', 'lmartineze@yahoo.com', '1968-05-26', '33-(825)690-5009', 'yzgDVlqtJM4g', '0000', '701 Hagan Alley', 8);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('pwebbf', 'dbakerf@fema.gov', '1996-07-20', '33-(281)159-1971', 'QGnoNS', '0012', '68 Leroy Way', 7);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('redwardsg', 'cmedinag@toplist.cz', '2014-08-10', '86-(126)559-2232', 'vOymZ5AvK', '0000', '6 Fuller Park', 6);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('kperkinsh', 'aburtonh@dell.com', '2015-01-08', '502-(358)477-5751', 'fq6jObg', '0000', '3 Scott Place', 5);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('aryani', 'tfieldsi@godaddy.com', '1993-05-21', '48-(108)646-5963', 'vGCt1ZLi', '4325', '275 Eagan Park', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('rkelleyj', 'jgonzalezj@cmu.edu', '2000-11-02', '86-(784)704-7180', 'oCUzPa', '4430', '284 Maryland Road', 1);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('mmorrisk', 'kporterk@alexa.com', '2013-06-09', '595-(321)123-8681', 'PsrnW5R', '0000', '39 Chinook Hill', 6);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('rgordonl', 'bwagnerl@squidoo.com', '2003-02-06', '234-(195)864-8323', 'VKZO2YI', '7965', 4);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('cmasonm', 'pwoodm@mozilla.org', '1976-03-12', '55-(435)847-1649', 'fghTnak', '0000', 8);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('hthompsonn', 'crayn@eepurl.com', '1962-10-01', '86-(759)681-8128', 'NrnKVbqfm', '0000', '2927 Tomscot Court', 5);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('cowenso', 'estanleyo@storify.com', '1975-03-20', '55-(268)420-4307', 'IaFzgkLW2jr', '1230', '136 Dahle Terrace', 3);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('wcrawfordp', 'jmillsp@pbs.org', '1974-11-13', '7-(195)635-2413', 'klGHVJS', '4325', '85334 Bobwhite Terrace', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('jwatsonq', 'jwatsonq@printfriendly.com', '1980-07-04', '358-(858)847-9215', 'pALnolxfNr2', '4430', '35277 Crescent Oaks Plaza', 1);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('jlawrencer', 'sfloresr@ted.com', '1957-05-12', '63-(214)188-6501', 'GSeUqephhbF', '0012', 7);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('pcarrolls', 'ewhites@howstuffworks.com', '1970-06-17', '86-(126)263-9764', '5JIwhCg', '0000', 8);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('bwatsont', 'rclarkt@oakley.com', '1955-12-24', '380-(369)428-5684', 'jlKj4oxyVcZ', '6894', 9);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('tlynchu', 'mcarpenteru@delicious.com', '1995-03-25', '94-(827)381-7566', 'hRJpWuV', '7965', 4);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('bphillipsv', 'priverav@stumbleupon.com', '1959-03-09', '505-(304)849-1892', 'MphvSNuMZm0', '4325', '0728 Schmedeman Terrace', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('smorrisw', 'rmeyerw@vistaprint.com', '1994-06-10', '230-(900)445-7864', 'XGRXWUVrW1L', '4430', '2 Talisman Park', 1);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('ajacksonx', 'cgibsonx@gizmodo.com', '1990-08-09', '86-(625)333-8627', 'xTNvEUQfaur', '4430', '65499 Haas Parkway', 1);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('bwalkery', 'jbrowny@reuters.com', '1997-08-17', '58-(784)246-6356', 'TXhZG4b4E', '4430', 1);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('vrobertsonz', 'bkellyz@prlog.org', '2009-03-09', '86-(451)435-4554', 'G39658', '4325', '2 Everett Hill', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('jharris10', 'fpowell10@pen.io', '1994-01-30', '62-(333)796-6391', 'ADgCV7bYwa2Q', '1230', '56633 High Crossing Road', 3);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('jcook11', 'bramos11@prweb.com', '1982-05-28', '84-(648)746-8257', 'Mg3r7K', '1230', '6006 Hanover Street', 3);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('chamilton12', 'psimpson12@photobucket.com', '2013-05-28', '7-(431)315-7003', '9sy1ze9chDLr', '7965', '3867 Caliangt Alley', 4);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('ggriffin13', 'aberry13@nyu.edu', '1966-11-26', '505-(215)914-7403', '4neykkkqpeM', '0012', '93637 Northfield Pass', 7);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('jrichards14', 'nstephens14@independent.co.uk', '2001-10-25', '62-(401)362-2035', '9uTMbyLsiV', '0000', '4511 Dayton Road', 8);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('aknight15', 'csimpson15@earthlink.net', '1981-03-05', '36-(891)746-5977', 'CnJK28LiGEiz', '6894', '1228 Roth Circle', 9);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('jpalmer16', 'jhunter16@google.com', '1976-12-12', '46-(828)539-5781', 'dIvP9CTQQT', '6894', '96 Waywood Junction', 9);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('dhill17', 'sbryant17@miitbeian.gov.cn', '1956-12-05', '86-(474)657-1155', 'tCAC2Pj', '7965', '28174 Fordem Court', 4);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('sfisher18', 'mmyers18@geocities.com', '1990-07-25', '62-(341)885-5091', 'jjaUGZuF1AgR', '0000', '38 Maple Wood Junction', 5);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('jwatkins19', 'vweaver19@wikimedia.org', '1986-05-28', '55-(836)977-8090', 'Rx6n4N', '0000', '59030 Moland Point', 6);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('hromero1a', 'jwilliamson1a@oracle.com', '1975-04-18', '55-(603)478-6883', 'Sp65rDtXmhW', '0000', 8);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('roliver1b', 'lwilson1b@lulu.com', '1986-05-05', '1-(707)588-2036', '4BAzeELgv3c', '0000', '083 Marcy Pass', 5);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, paisID) values ('khernandez1c', 'tjordan1c@bandcamp.com', '1956-11-16', '62-(451)578-7713', 'ZXIJlyS', '4325', 2);
insert into Utilizador (username, email, dataNascimento, telefone, password, codigoPostal, morada, paisID) values ('crice1d', 'pcooper1d@ucla.edu', '1988-07-07', '234-(329)694-5720', 'lrKpkPkSa4ZI', '4325', '95 Raven Parkway', 2);


insert into GeneroMusical (nome) values ('Alternative Rock');
insert into GeneroMusical (nome) values ('Hip Hop');
insert into GeneroMusical (nome) values ('Blues');
insert into GeneroMusical (nome) values ('Punk');
insert into GeneroMusical (nome) values ('Latin');
insert into GeneroMusical (nome) values ('Opera');
insert into GeneroMusical (nome) values ('Rock');
insert into GeneroMusical (nome) values ('Indie');
insert into GeneroMusical (nome) values ('Grunge');
insert into GeneroMusical (nome) values ('Classical');
insert into GeneroMusical (nome) values ('Country');
insert into GeneroMusical (nome) values ('Dance');
insert into GeneroMusical (nome) values ('Electronic');
insert into GeneroMusical (nome) values ('Heavy Metal');
insert into GeneroMusical (nome) values ('Thrash Metal');
insert into GeneroMusical (nome) values ('Comedy Rock');


insert into Publicitario (nome, investimento, paisID) values ('Oyoba', 37472, 1);
insert into Publicitario (nome, investimento, paisID) values ('Yombu', 13174, 2);
insert into Publicitario (nome, investimento, paisID) values ('Skiba', 86932, 3);
insert into Publicitario (nome, investimento, paisID) values ('Meetz', 56539, 4);
insert into Publicitario (nome, investimento, paisID) values ('Fiveclub', 50724, 5);
insert into Publicitario (nome, investimento, paisID) values ('Quimba', 77819, 6);
insert into Publicitario (nome, investimento, paisID) values ('Aibox', 57967, 7);
insert into Publicitario (nome, investimento, paisID) values ('Oyoba', 96388, 8);
insert into Publicitario (nome, investimento, paisID) values ('Ntags', 36152, 9);


insert into Publicidade (duracao, publicitarioID) values (440, 1);
insert into Publicidade (duracao, publicitarioID) values (583, 2);
insert into Publicidade (duracao, publicitarioID) values (903, 3);
insert into Publicidade (duracao, publicitarioID) values (69, 4);
insert into Publicidade (duracao, publicitarioID) values (828, 5);
insert into Publicidade (duracao, publicitarioID) values (238, 6);
insert into Publicidade (duracao, publicitarioID) values (231, 7);
insert into Publicidade (duracao, publicitarioID) values (424, 8);
insert into Publicidade (duracao, publicitarioID) values (667, 9);


insert into Artista (nome, biografia, paisID) values ('Andrew Kelly', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris', 1);
insert into Artista (nome, biografia, paisID) values ('Anne Elliott', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', 2);
insert into Artista (nome, biografia, paisID) values ('Justin Hanson', 'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 3);
insert into Artista (nome, biografia, paisID) values ('Roger Rice', 'honcus sed vestibulum sit amet heh ad rwe eqw', 4);
insert into Artista (nome, biografia, paisID) values ('Janet Welch', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices', 5);
insert into Artista (nome, biografia, paisID) values ('Nicholas Cook', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', 6);
insert into Artista (nome, biografia, paisID) values ('Maria Ramirez', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', 7);
insert into Artista (nome, biografia, paisID) values ('Teresa Olson', 'ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', 8);
insert into Artista (nome, biografia, paisID) values ('Marilyn Richardson', 'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', 9);
insert into Artista (nome, biografia, paisID) values ('Metallica', 'Metallica were easily the best, most influential heavy metal band of the 80s and 90s.', 3);
insert into Artista (nome, biografia, paisID) values ('Tenacious D', 'Rightfully hailed as "the greatest band on Earth", the supersized acoustic metal/comedy duo Tenacious D was an unlikely sucess story.', 3);
insert into Artista (nome, biografia, paisID) values ('Steel Panther', 'Satirically pretending to be a hair metal band that missed its big break in the 80s, Singer Michael Starr, drummer Stix Zadinia, bassist Lexxi Foxxx, and guitarist Satchel hit the club circuit on the Sunset Strip around the turn of the milennium', 3);
insert into Artista (nome, biografia, paisID) values ('Avenged Sevenfold', 'Formed in 1998. Best metal band in the world', 3);
insert into Artista (nome, biografia, paisID) values ('Brand New', 'metalcore band formed in New York. a bit emo', 3);
insert into Artista (nome, biografia, paisID) values ('Every Time I Die', 'thrash metal band from Buffalo. heaviest band out there', 3);


insert into Pagamento (forma) values ('gratuito');
insert into Pagamento (forma) values ('CartaoCredito');
insert into Pagamento (forma) values ('Paypal');
insert into Pagamento (forma) values ('PaysafeCard');


insert into TipoConta (precoMensal) values (0.00);
insert into TipoConta (precoMensal) values (6.99);


insert into Playlist (nome, criador) values ('Voltsillam', 'rfox0');
insert into Playlist (nome, criador) values ('Fintone', 'bphillipsv');
insert into Playlist (nome, criador) values ('Tresom', 'jpalmer16');
insert into Playlist (nome, criador) values ('Home Ing', 'jwatkins19');
insert into Playlist (nome, criador) values ('Namfix', 'crice1d');
insert into Playlist (nome, criador) values ('Prodder', 'dhill17');
insert into Playlist (nome, criador) values ('Zathin', 'sfisher18');
insert into Playlist (nome, criador) values ('Y-Solowarm', 'cowenso');
insert into Playlist (nome, criador) values ('Flexidy', 'lmccoyb');
insert into Playlist (nome, criador) values ('Bamity', 'mnguyen5');
insert into Playlist (nome, criador) values ('Ronstring', 'mfoster7');
insert into Playlist (nome, criador) values ('Voltsillam', 'smorrisw');
insert into Playlist (nome, criador) values ('Aerified', 'khernandez1c');
insert into Playlist (nome, criador) values ('Voyatouch', 'jcook11');
insert into Playlist (nome, criador) values ('Opela', 'smorrisw');
insert into Playlist (nome, criador) values ('Cookley', 'khernandez1c');
insert into Playlist (nome, criador) values ('Mat Lam Tam', 'mfoster7');
insert into Playlist (nome, criador) values ('Daltfresh', 'hthompsonn');
insert into Playlist (nome, criador) values ('Solarbreeze', 'jcook11');
insert into Playlist (nome, criador) values ('Best Of Metallica', 'pcarrolls');
insert into Playlist (nome, criador) values ('Nothing can kill the Metal', 'mnguyen5');
insert into Playlist (nome, criador) values ('Tenacious Double D', 'tlynchu');
insert into Playlist (nome, criador) values ('Rock Solid', 'hthompsonn');


insert into Musica (nome, duracao) values ('Veribet', 441);
insert into Musica (nome, duracao) values ('Konklab', 103);
insert into Musica (nome, duracao) values ('Lotstring', 267);
insert into Musica (nome, duracao) values ('Domainer', 363);
insert into Musica (nome, duracao) values ('Trippledex', 460);
insert into Musica (nome, duracao) values ('Hatity', 174);
insert into Musica (nome, duracao) values ('Otcom', 258);
insert into Musica (nome, duracao) values ('Namfix', 444);
insert into Musica (nome, duracao) values ('Matsoft', 12);
insert into Musica (nome, duracao) values ('Otcom', 428);
insert into Musica (nome, duracao) values ('Ronstring', 37);
insert into Musica (nome, duracao) values ('Bamity', 150);
insert into Musica (nome, duracao) values ('Opela', 212);
insert into Musica (nome, duracao) values ('Zaam-Dox', 453);
insert into Musica (nome, duracao) values ('Veribet', 201);
insert into Musica (nome, duracao) values ('It', 150);
insert into Musica (nome, duracao) values ('Latlux', 371);
insert into Musica (nome, duracao) values ('Greenlam', 428);
insert into Musica (nome, duracao) values ('Domainer', 374);
insert into Musica (nome, duracao) values ('Voltsillam', 126);
insert into Musica (nome, duracao) values ('Hardwired', 189);
insert into Musica (nome, duracao) values ('Moth Into Flame', 389);
insert into Musica (nome, duracao) values ('Atlas, Rise!', 419);
insert into Musica (nome, duracao) values ('Confusion', 401);
insert into Musica (nome, duracao) values ('Am I Savage?', 210);
insert into Musica (nome, duracao) values ('Murder One', 345);
insert into Musica (nome, duracao) values ('Master Of Puppets', 522);
insert into Musica (nome, duracao) values ('Battery', 112);
insert into Musica (nome, duracao) values ('Orion (Instrumental)', 420);
insert into Musica (nome, duracao) values ('Ride The Lightning (Remastered)', 443);
insert into Musica (nome, duracao) values ('Fade To Black (Remastered)', 432);
insert into Musica (nome, duracao) values ('Creeping Death (Remastered)', 123);
insert into Musica (nome, duracao) values ('One', 234);
insert into Musica (nome, duracao) values ('Enter Sandman', 543);
insert into Musica (nome, duracao) values ('The Unforgiven', 321);
insert into Musica (nome, duracao) values ('Beelzeboss (The Final Showdown)', 543);
insert into Musica (nome, duracao) values ('Kickapoo', 213);
insert into Musica (nome, duracao) values ('Classico', 122);
insert into Musica (nome, duracao) values ('Master Exploder', 543);
insert into Musica (nome, duracao) values ('POD', 123);
insert into Musica (nome, duracao) values ('The Metal', 432);
insert into Musica (nome, duracao) values ('Tribute', 543);
insert into Musica (nome, duracao) values ('Wonderboy', 435);
insert into Musica (nome, duracao) values ('F%ck Her Gently', 321);
insert into Musica (nome, duracao) values ('Rize Of The Fenix', 126);
insert into Musica (nome, duracao) values ('To Be The Best', 286);
insert into Musica (nome, duracao) values ('Death To All But Metal', 328);
insert into Musica (nome, duracao) values ('Community Property', 487);
insert into Musica (nome, duracao) values ('Fat Girl', 543);
insert into Musica (nome, duracao) values ('Eatin Aint Cheatin', 432);
insert into Musica (nome, duracao) values ('Party All Day', 543);
insert into Musica (nome, duracao) values ('The Shocker', 122);
insert into Musica (nome, duracao) values ('Gloryhole', 823);
insert into Musica (nome, duracao) values ('Party Like Tomorrow is the End of the World', 543);
insert into Musica (nome, duracao) values ('The Burden of Being Wonderful', 732);
insert into Musica (nome, duracao) values ('17 Girls In a Row', 543);
insert into Musica (nome, duracao) values ('if You Really Really Love Me', 356);
insert into Musica (nome, duracao) values ('...And Justice For All', 666);
insert into Musica (nome, duracao) values ('Low Hanging Fruit', 642);
insert into Musica (nome, duracao) values ('Roadie', 500);
insert into Musica (nome, duracao) values ('POD', 123);
insert into Musica (nome, duracao) values ('The Metal', 432);
insert into Musica (nome, duracao) values ('Tribute', 543);
insert into Musica (nome, duracao) values ('Wonderboy', 435);
insert into Musica (nome, duracao) values ('F%ck Her Gently', 321);
insert into Musica (nome, duracao) values ('Rize Of The Fenix', 126);
insert into Musica (nome, duracao) values ('To Be The Best', 286);
insert into Musica (nome, duracao) values ('Low Hanging Fruit', 642);
insert into Musica (nome, duracao) values ('Roadie', 500);

insert into Tipo (nome) values ('Studio');
insert into Tipo (nome) values ('Compilation');
insert into Tipo (nome) values ('Soundtrack');
insert into Tipo (nome) values ('Live');


insert into Album (nome, ano, tipoAlbumID) values ('Hardwired...To Self-Destruct', 2016, 1);
insert into Album (nome, ano, tipoAlbumID) values ('Metallica', 1991, 1);
insert into Album (nome, ano, tipoAlbumID) values ('Master Of Puppets', 1986, 1);
insert into Album (nome, ano, tipoAlbumID) values ('Ride The Lightning (Remastered)', 1984, 1);
insert into Album (nome, ano, tipoAlbumID) values ('...And Justice For All', 1988, 1);
insert into Album (nome, ano, tipoAlbumID) values ('The Pick Of Destiny', 2006, 1);
insert into Album (nome, ano, tipoAlbumID) values ('Rize Of The Fenix', 2012, 1);
insert into Album (nome, ano, tipoAlbumID) values ('Tenacious D', 2001, 3);
insert into Album (nome, ano, tipoAlbumID) values ('Feel The Steel', 2009, 1);
insert into Album (nome, ano, tipoAlbumID) values ('Balls Out', 2011, 4);
insert into Album (nome, ano, tipoAlbumID) values ('All You Can Eat', 2013, 2);
  insert into Album (nome, ano, tipoAlbumID) values ('Tenacious D Live', 2015, 4);


insert into UtilizadorSegueUtilizador (username1, username2) values ('crice1d', 'smorrisw');
insert into UtilizadorSegueUtilizador (username1, username2) values ('crice1d', 'jcook11');
insert into UtilizadorSegueUtilizador (username1, username2) values ('jcook11', 'crice1d');
insert into UtilizadorSegueUtilizador (username1, username2) values ('crice1d', 'pcarrolls');
insert into UtilizadorSegueUtilizador (username1, username2) values ('sfisher18', 'ajacksonx');
insert into UtilizadorSegueUtilizador (username1, username2) values ('sfisher18', 'ggriffin13');
insert into UtilizadorSegueUtilizador (username1, username2) values ('jwatkins19', 'jwatsonq');
insert into UtilizadorSegueUtilizador (username1, username2) values ('jpalmer16', 'ajacksonx');
insert into UtilizadorSegueUtilizador (username1, username2) values ('jrichards14', 'dhill17');
insert into UtilizadorSegueUtilizador (username1, username2) values ('bphillipsv', 'hthompsonn');
insert into UtilizadorSegueUtilizador (username1, username2) values ('cowenso', 'jlawrencer');


insert into UtilizadorSegueArtista (username, artistaID) values ('rkelleyj', 10);
insert into UtilizadorSegueArtista (username, artistaID) values ('mmorrisk', 10);
insert into UtilizadorSegueArtista (username, artistaID) values ('bwalkery', 9);
insert into UtilizadorSegueArtista (username, artistaID) values ('aknight15', 8);
insert into UtilizadorSegueArtista (username, artistaID) values ('kperkinsh', 5);


insert into UtilizadorGuardaPlaylist (username, playlistID) values ('rkelleyj', 15);
insert into UtilizadorGuardaPlaylist (username, playlistID) values ('aknight15',20);
insert into UtilizadorGuardaPlaylist (username, playlistID) values ('bwalkery',21);
insert into UtilizadorGuardaPlaylist (username, playlistID) values ('kperkinsh',22);
insert into UtilizadorGuardaPlaylist (username, playlistID) values ('cowenso', 23);


insert into UtilizadorFavoritaAlbum (username, albumID) values ('rkelleyj', 1);
insert into UtilizadorFavoritaAlbum (username, albumID) values ('aknight15',2);
insert into UtilizadorFavoritaAlbum (username, albumID) values ('bwalkery',4);
insert into UtilizadorFavoritaAlbum (username, albumID) values ('kperkinsh',6);
insert into UtilizadorFavoritaAlbum (username, albumID) values ('cowenso', 9);


insert into UtilizadorFavoritaMusica (username, musicaID) values ('rkelleyj', 28);
insert into UtilizadorFavoritaMusica (username, musicaID) values ('rkelleyj', 29);
insert into UtilizadorFavoritaMusica (username, musicaID) values ('rkelleyj', 30);
insert into UtilizadorFavoritaMusica (username, musicaID) values ('rkelleyj', 31);
insert into UtilizadorFavoritaMusica (username, musicaID) values ('aknight15',29);
insert into UtilizadorFavoritaMusica (username, musicaID) values ('bwalkery',25);
insert into UtilizadorFavoritaMusica (username, musicaID) values ('kperkinsh',28);
insert into UtilizadorFavoritaMusica (username, musicaID) values ('cowenso', 24);


insert into UtilizadorOuveMusica (username, musicaID, time_stamp) values ('rkelleyj', 22, '2017-05-27 19:10:05.100');
insert into UtilizadorOuveMusica (username, musicaID, time_stamp) values ('aknight15',21, '2017-05-27 07:10:31.100');
insert into UtilizadorOuveMusica (username, musicaID, time_stamp) values ('bwalkery',27, '2017-05-28 15:10:45.100');
insert into UtilizadorOuveMusica (username, musicaID, time_stamp) values ('kperkinsh',10, '2017-06-06 03:10:25.100');
insert into UtilizadorOuveMusica (username, musicaID, time_stamp) values ('cowenso', 20, '2017-05-31 23:10:12.100');


insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (1, 7);
insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (3, 7);
insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (6, 5);
insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (6, 2);
insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (3, 2);
insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (10, 11);
insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (10, 12);
insert into ArtistaRelacionaArtista (artistaID1, artistaID2) values (11, 12);


insert into AlbumGeneroMusical (albumID, generoMusicalID) values (1, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (2, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (3, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (4, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (5, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (6, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (7, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (8, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (9, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (10, 16);
insert into AlbumGeneroMusical (albumID, generoMusicalID) values (11, 16);


insert into AlbumRelacionaAlbum (albumID1, albumID2) values (1, 2);
insert into AlbumRelacionaAlbum (albumID1, albumID2) values (7, 7);
insert into AlbumRelacionaAlbum (albumID1, albumID2) values (11, 10);
insert into AlbumRelacionaAlbum (albumID1, albumID2) values (6, 9);
insert into AlbumRelacionaAlbum (albumID1, albumID2) values (1, 5);
insert into AlbumRelacionaAlbum (albumID1, albumID2) values (2, 3);
insert into AlbumRelacionaAlbum (albumID1, albumID2) values (4, 5);

  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (21,1, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (22,1, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (23,1, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (24,1, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (25,1, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (26,1, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (27,3, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (28,3, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (29,3, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (30,4, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (31,4, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (32,4, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (33,5, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (58,5, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (34,2, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (35,2, 10);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (36,6, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (37,6, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (38,6, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (39,6, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (40,6, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (41,6, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (42,8, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (43,8, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (44,8, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (45,7, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (46,7, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (59,7, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (60,7, 11);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (47,9, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (48,9, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (49,9, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (50,9, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (51,9, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (52,9, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (56,10, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (57,10, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (53,11, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (54,11, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (55,11, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (61,12, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (62,12, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (63,12, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (64,12, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (65,12, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (66,12, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (67,12, 12);
  insert into MusicaAlbumArtista (musicaID, albumID, artistaID) values (68,12, 12);


insert into PlaylistGuardaMusica (playlistID, musicaID) values(20,21);
insert into PlaylistGuardaMusica (playlistID, musicaID) values(20,22);
insert into PlaylistGuardaMusica (playlistID, musicaID) values(20,23);
insert into PlaylistGuardaMusica (playlistID, musicaID) values(20,24);
insert into PlaylistGuardaMusica (playlistID, musicaID) values(20,25);
insert into PlaylistGuardaMusica (playlistID, musicaID) values(20,33);
insert into PlaylistGuardaMusica (playlistID, musicaID) values(20,32);


insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2017-01-31', 'rfox0', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (69.90, '2017-02-17', '2017-12-17', 'ahernandez1', 'CartaoCredito', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (83.88, '2016-12-04', '2017-12-04', 'dwheeler2', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (13.98, '2016-11-21', '2017-01-21', 'ccrawford3', 'Paypal', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (6.99, '2017-05-01', '2017-06-01', 'cday4', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00,  '2017-06-06', 'mnguyen5', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (6.99, '2016-10-06', '2016-11-06', 'kmason6', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (13.98,  '2017-02-04', '2017-04-04', 'mfoster7', 'Paypal', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (167.76, '2015-01-30', '2017-01-30', 'gsimpson8', 'CartaoCredito', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2017-01-01', 'swilliamson9', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (20.97, '2017-03-03', '2017-06-03', 'tmitchella', 'CartaoCredito', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2017-04-25', 'lmccoyb', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (20.97, '2017-01-25', '2017-04-25', 'sowensd', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (13.98, '2016-04-26', '2016-06-26', 'rhansonc', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-11-11', 'jrodrigueze', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (61.91, '2015-01-10', '2016-10-10', 'pwebbf', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (6.99, '2016-05-10', '2016-06-10', 'redwardsg', 'Paypal', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-04-01', 'kperkinsh', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (20.97, '2016-02-31', '2016-05-31', 'mmorrisk', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (76.89, '2016-04-21', '2017-05-21','rgordonl', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-12-31', 'cmasonm', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (76.89, '2016-04-31', '2017-03-31', 'hthompsonn', 'CartaoCredito', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (8, '2016-06-31', '2017-02-28', 'cowenso', 'CartaoCredito', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2017-02-03', 'wcrawfordp', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (6, '2016-04-25', '2016-11-25', 'jwatsonq', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (62.91, '2017-02-12', '2017-11-12', 'jlawrencer', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (62.91, '2017-03-03', '2017-12-03', 'pcarrolls', 'Paypal', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-04-25', 'bwatsont', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (48.93, '2016-04-25', '2017-11-25', 'tlynchu', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (13.98, '2016-05-25', '2016-07-25', 'bphillipsv', 'CartaoCredito', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-04-25', 'smorrisw', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (13.98, '2016-10-25', '2016-12-25', 'ajacksonx', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-10-25', 'bwalkery', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-04-25', 'vrobertsonz', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-12-03', 'jharris10', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-01-03', 'jcook11', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (20.97, '2017-03-10', '2017-06-10', 'chamilton12', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-08-25', 'ggriffin13', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-04-25', 'jrichards14', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (83.88, '2016-04-25', '2017-04-25', 'aknight15', 'Paypal', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-07-25', 'jpalmer16', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-08-03', 'dhill17', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (83.88, '2016-11-26', '2017-11-26', 'sfisher18', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (90.87, '2016-04-25', '2017-05-25', 'jwatkins19', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2016-04-11', 'hromero1a', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (20.97, '2016-01-25', '2017-04-25', 'roliver1b', 'PaysafeCard', 6.99);
insert into Conta (preco, dataInicio, username, pagamento, tipoConta) values (0.00, '2014-04-11', 'khernandez1c', 'gratuito', 0.00);
insert into Conta (preco, dataInicio, dataFim, username, pagamento, tipoConta) values (83.88, '2016-04-15', '2017-04-15', 'crice1d', 'CartaoCredito',  6.99);
