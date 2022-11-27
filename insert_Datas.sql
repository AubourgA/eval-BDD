-- inserer data dnas la table CINEMA
INSERT INTO cinema (Id_Cinema, City) VALUES 
(NULL, 'MELUN'),
(NULL, 'FONTAINBLEAU'),
(NULL, 'MONTEREAU'),
(NULL, 'CARRE SENART')
;

-- inserer data dans la table ROOM
INSERT INTO ROOM  VALUES
(NULL,'MEL1',50,1),
(NULL,'MEL2',150,1),
(NULL,'FONT1',180,2),
(NULL,'FONT2',200,2),
(NULL,'MONT1',175,3),
(NULL,'CS1',370,4),
(NULL,'CS2',395,4);

-- inserer data dans la table MOVIE
INSERT INTO MOVIE VALUES
(NULL, 'STAR WARS'),
(NULL, 'JURASSIC PARK'),
(NULL, 'SI J ETAIS RICHE'),
(NULL, 'LE ROI LION'),
(NULL, 'LES EVADEES'),
(NULL, 'INDIANA JONES'),
(NULL, 'JOHN WICK');

-- inserer data dans PAIMENT
INSERT INTO PAIEMENT VALUES
(NULL, 'EN LIGNE'),
(NULL, 'SUR PLACE');

-- inserer data dans SEANCE
INSERT INTO SEANCE VALUES 
(NULL, '2022-11-28','09:00',1,1),
(NULL, '2022-11-28','11:00',1,2),
(NULL, '2022-11-28','09:00',2,3),
(NULL, '2022-11-28','11:00',2,4),
(NULL, '2022-11-29','09:00',3,1),
(NULL, '2022-11-29','11:00',3,2),
(NULL, '2022-11-29','09:00',4,3),
(NULL, '2022-11-29','11:00',4,4);

-- inserer dans PRICE
INSERT INTO PRICE VALUES
(NULL, 'PLEIN TARIF',9.20),
(NULL, 'ETUDIANT',7.60),
(NULL, 'MOINS DE 14 ANS',5.90);

-- inserer dans table TICKEt
INSERT INTO TICKET VALUES
(NULL, '2022-11-26',1,1,1),
(NULL, '2022-11-26',2,1,1),
(NULL, '2022-11-26',2,1,1),
(NULL, '2022-11-26',3,2,1),
(NULL, '2022-11-26',4,1,2);

-- inserer dans talbe USER
INSERT INTO USERS VALUES
(NULL, 'Jean','ADMIN',1),
(NULL, 'Alain','ADMIN',2),
(NULL, 'John','ADMIN',3),
(NULL, 'Mike','ADMIN',4);

-- inserer dans table CUSTOMERS
INSERT INTO CUSTOMER VALUES
(NULL, 'Anne', SHA1('mot de passe'),'montemail@gmail.com',1),
(NULL, 'Tomas', SHA1('mot de passe2'),'tonemail@gmail.com',2),
(NULL, 'Laure', SHA1('mot de passe3'),'sonemail@gmail.com',2),
(NULL, 'Ariette', SHA1('mot de passe4'),'leurtemail@gmail.com',2),
(NULL, 'Donald', SHA1('mot de passe5'),'lesleuremail@gmail.com',3),
(NULL, 'Roger', SHA1('mot de passe6'),'duronemail@gmail.com',3),
(NULL, 'Martin', SHA1('mot de passe7'),'testemail@gmail.com',3),
(NULL, 'Nicolas', SHA1('mot de passe8'),'ideeemail@gmail.com',3);