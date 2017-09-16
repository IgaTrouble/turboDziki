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
    id_p INT,
    nazwa_p TEXT,
    cena float,
    PRIMARY KEY (id_p)
);
#drop table produkty


INSERT INTO klienci (nazwa, NIP) VALUES ('Krawczyk', '5431234398');
INSERT INTO klienci (nazwa, NIP) VALUES ('Santor', '5431223398');
INSERT INTO klienci (nazwa, NIP) VALUES ('Gorniak', '5431234000');
INSERT INTO klienci (nazwa, NIP) VALUES ('Piaseczny', '1231238765');
INSERT INTO klienci (nazwa, NIP) VALUES ('Dzikus', '5431234300');


#drop table opiekunowie
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('1', '11', 'Kon');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('2', '21', 'Kaczka');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('3', '31', 'Koza');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('4', '41', 'Krowa');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('5', '51', 'Alpaka');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('5', '41', 'Alpaka');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('5', '31', 'Alpaka');

INSERT INTO produkty (id_p, nazwa_p, cena) VALUES ('11', 'Kopytka', 4);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES ('21', 'Skrzydelka', 10);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES ('31', 'Rogi', 4);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES ('41', 'Mleko', 1);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES ('51', 'Futro', 100);


