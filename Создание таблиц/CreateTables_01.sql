CREATE TABLE PartInfoMain ( # Основная таблица с именами участников
    id INTEGER NOT NULL PRIMARY KEY, # id - будет общим первичным ключом
    last_name CHAR(30) NOT NULL,
    first_name CHAR(30) NOT NULL,
    thrests_name CHAR(30)
);

CREATE TABLE Sity (
    id_sity INTEGER NOT NULL PRIMARY KEY,
    name_sity VARCHAR(50) NOT NULL
);

CREATE TABLE University (
    id_univer INTEGER NOT NULL PRIMARY KEY,
    name_univer VARCHAR(50) NOT NULL
);

CREATE TABLE Name_Of_Conf (
    id_name_conf INTEGER NOT NULL PRIMARY KEY,
    name_conf VARCHAR(200) NOT NULL
);

CREATE TABLE WorkInfo (
    id INTEGER NOT NULL PRIMARY KEY,
    scien_degree VARCHAR(100) NOT NULL,
    scien_title VARCHAR(100) NOT NULL,
    scien_field VARCHAR(100) NOT NULL,
    id_univer INTEGER NOT NULL,
    division VARCHAR(100),
    post VARCHAR(100),
    FOREIGN KEY(id) REFERENCES PartInfoMain(id), # id - также будет общим внешним ключом
    FOREIGN KEY(id_univer) REFERENCES University(id_univer)
);

CREATE TABLE PersInfo (
    id INTEGER NOT NULL PRIMARY KEY,
    country VARCHAR(50) NOT NULL,
    id_city INTEGER NOT NULL,
    post_code INTEGER NOT NULL,
    addres VARCHAR(100) NOT NULL,
    work_phone VARCHAR(20) NOT NULL,
    home_phone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    FOREIGN KEY(id) REFERENCES PartInfoMain(id),
    FOREIGN KEY(id_city) REFERENCES Sity(id_city)
);


CREATE TABLE ConfPartMain(
    id INTEGER NOT NULL PRIMARY KEY,
    partType VARCHAR(50) NOT NULL,
    speechTopic VARCHAR(300) NOT NULL,
    absReceived BOOLEAN NOT NULL,
    FOREIGN KEY(id) REFERENCES PartInfoMain(id)
);

CREATE TABLE ConfPartDetail(
    id INTEGER NOT NULL PRIMARY KEY,
    firstInvitationDate DATE NOT NULL,
    applicationReceiptDate DATE NOT NULL,
    secondInvitationDate DATE NOT NULL,
    feeReceiptDate DATE NOT NULL,
    feeAmount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(id) REFERENCES PartInfoMain(id)
);

CREATE TABLE ConfPartAdd(
    id INTEGER NOT NULL PRIMARY KEY,
    arrivalDate DATE NOT NULL,
    departureDate DATE NOT NULL,
    hotelNeeded BOOLEAN NOT NULL,
    FOREIGN KEY(id) REFERENCES PartInfoMain(id)
);













