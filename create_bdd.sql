-- creation de la bdd
DROP SCHEMA IF EXISTS GESTIONCINEMA;
CREATE SCHEMA GESTIONCINEMA; 

-- creation de la table CINEMA
CREATE TABLE Cinema  
 (
	Id_Cinema int not null primary key auto_increment,
	City varchar(50) not null
)
ENGINE=InnoDB
;


-- creation de la table ROOM
CREATE TABLE ROOM (
    Id_ROOM int NOT NULL AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Capacity INT(11) NOT NULL,
    Id_Cinema INT(11) NOT NULL,
    PRIMARY KEY (Id_ROOM),
    FOREIGN KEY (Id_Cinema) REFERENCES Cinema(Id_Cinema)
)
ENGINE=INNODB;

-- creation de la table USERS
CREATE TABLE Users (
    Id_Users int NOT NULL AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    Id_Cinema INT(11) NOT NULL,
    PRIMARY KEY (Id_Users),
    FOREIGN KEY (Id_Cinema) REFERENCES Cinema(Id_Cinema)
)
ENGINE=INNODB;

-- creation de la table MOVIE
CREATE TABLE MOVIE  
 (
	Id_movie int(11) not null auto_increment,
	Title varchar(50) not null,
	PRIMARY KEY (Id_movie)
)
ENGINE=InnoDB;

-- creation de la table PAIMENT
CREATE TABLE Paiement  
 (
	Id_Paiment int(11) not null auto_increment,
	TypePaiment varchar(100) not null,
	PRIMARY KEY (Id_Paiment) 
)
ENGINE=InnoDB
;

-- creation de la table SEANCE
CREATE TABLE Seance (
    Id_Seance int NOT NULL AUTO_INCREMENT,
    Date DATE NOT NULL,
    hourly TIME NOT NULL,
    Id_room INT(11) NOT NULL,
    Id_movie INT(11) NOT NULL,
    PRIMARY KEY (Id_Seance),
    FOREIGN KEY (Id_room) REFERENCES ROOM(Id_room),
    FOREIGN KEY (Id_movie) REFERENCES MOVIE(Id_movie)
)
ENGINE=INNODB;

-- creation de la table PRICE
CREATE TABLE Price (
    Id_Price int NOT NULL AUTO_INCREMENT,
    TypePrice VARCHAR(50) NOT NULL,
    Price DECIMAL(4,2) NOT NULL,
    PRIMARY KEY (Id_Price)
)
ENGINE=INNODB;


-- creation de la table TICKET
CREATE TABLE TICKET (
    Id_ticket int NOT NULL AUTO_INCREMENT,
    Date_buy DATE NOT NULL,
    Id_Seance INT(11) NOT NULL,
    Id_Price INT(11) NOT NULL,
    Id_Paiment INT(11) NOT NULL,
    PRIMARY KEY (Id_ticket),
    FOREIGN KEY (Id_Seance) REFERENCES Seance( Id_Seance),
    FOREIGN KEY (Id_Price) REFERENCES Price(Id_Price),
    FOREIGN KEY (Id_Paiment) REFERENCES Paiement(Id_Paiment)
)
ENGINE=INNODB;


-- creation de la table Customers
CREATE TABLE Customer (
    Id_Customer int NOT NULL AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL CHECK (email LIKE "%@%"),
    Id_Seance INT(11) NOT NULL,
    PRIMARY KEY (Id_Customer),
    FOREIGN KEY (Id_Seance) REFERENCES Seance(Id_Seance)
)
ENGINE=INNODB;

