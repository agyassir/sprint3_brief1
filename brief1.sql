

use DATABASE ConnectEvent;

CREATE Table participant (
    id int PRIMARY KEY AUTO_INCREMENT,
    firstname TEXT,
    lastname TEXT,
    cin VARCHAR(20),
    email VARCHAR(255),
    phone INT,
    address VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255),
    birthdate DATE

);
CREATE TABLE  organisateur(
      id int PRIMARY KEY AUTO_INCREMENT,
    firstname TEXT,
    lastname TEXT,
    phone INT

);

CREATE TABLE sponsor(
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    sector TEXT,
    email VARCHAR(255),
    phone INT,
    address VARCHAR(255)
);
CREATE TABLE lieux(
    id int PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255),
    city TEXT,
    country TEXT,
    zipcode VARCHAR(255)
);

CREATE TABLE event(
    id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    datetime DATETIME,
    description TEXT,
    idlieu int,
    idsponsor int,
    idorganisateur int,
    Foreign Key (idlieu) REFERENCES lieux(id),
    Foreign Key (idorganisateur) REFERENCES organisateur(id),
    Foreign Key (idsponsor) REFERENCES sponsor(id)
);
CREATE TABLE participer(
    idParticipant int,
    idevent int,
    DATE DATETIME PRIMARY KEY,
    prix VARCHAR(255),
    categorie TEXT,
    Foreign Key (idParticipant) REFERENCES participant(id),
    Foreign Key (idevent) REFERENCES event(id)
);




