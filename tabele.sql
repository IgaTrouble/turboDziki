create database tabele;
#drop database tabele;
use tabele;

#drop table klienci

CREATE TABLE klienci (
    id_k INT,
    nazwa TEXT,
    NIP TEXT,
    PRIMARY KEY (id_k)
);

CREATE TABLE opiekunowie (
    id_o INT AUTO_INCREMENT,
    id_k INT,
    id_p INT,
    nazwa_o TEXT,
    PRIMARY KEY (id_o),
    FOREIGN KEY (id_k)
        REFERENCES klienci,
    FOREIGN KEY (id_p)
        REFERENCES produkty
);
#drop table opiekunowie


CREATE TABLE produkty (
    id_p INT AUTO_INCREMENT,
    nazwa_p TEXT,
    cena float,
    PRIMARY KEY (id_p)
);
#drop table produkty


INSERT INTO tabele (nazwa, NIP) VALUES ('Krawczyk', '5431234398');
INSERT INTO tabele (nazwa, NIP) VALUES ('Santor', '5431223398');
INSERT INTO tabele (nazwa, NIP) VALUES ('Gorniak', '5431234000');
INSERT INTO tabele (nazwa, NIP) VALUES ('Piaseczny', '1231238765');
INSERT INTO tabele (nazwa, NIP) VALUES ('Dzikus', '5431234300');
