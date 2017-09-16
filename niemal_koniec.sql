create database tabele;
#drop database tabele;
use tabele;

#drop table klienci;

CREATE TABLE klienci (
    id_k INT AUTO_INCREMENT,
    nazwa TEXT,
    NIP TEXT,
    PRIMARY KEY (id_k)
);

#drop table produkty;
CREATE TABLE produkty (
    id_p INT auto_increment,
    nazwa_p TEXT,
    cena float,
    PRIMARY KEY (id_p)
);

drop table opiekunowie;
CREATE TABLE opiekunowie (
    id_o INT AUTO_INCREMENT,
    id_k INT,
    id_p INT,
    nazwa_o TEXT,
    PRIMARY KEY (id_o),
    FOREIGN KEY (id_k)
        REFERENCES klienci (id_k),
    FOREIGN KEY (id_p)
        REFERENCES produkty (id_p)
);



INSERT INTO klienci (nazwa, NIP) VALUES ('Krawczyk', '5431234398');
INSERT INTO klienci (nazwa, NIP) VALUES ('Santor', '5431223398');
INSERT INTO klienci (nazwa, NIP) VALUES ('Gorniak', '5431234000');
INSERT INTO klienci (nazwa, NIP) VALUES ('Piaseczny', '1231238765');
INSERT INTO klienci (nazwa, NIP) VALUES ('Dzikus', '5431234300');

INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (11, 'Kopytka', 4);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (21, 'Skrzydelka', 10);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (31, 'Rogi', 4);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (41, 'Mleko', 1);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (51, 'Futro', 100);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (61, 'Jajo', 2);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (71, 'Fejm', 9);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (81, 'Lans', 7);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (91, 'Parowka', 12);
INSERT INTO produkty (id_p, nazwa_p, cena) VALUES (101, 'Motorowka', 67);

INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (1, 11, 'Kon');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (2, 21, 'Kaczka');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (3, 31, 'Koza');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (4, 41, 'Krowa');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (5, 51, 'Alpaka');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (5, 41, 'Alpaka');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (5, 31, 'Alpaka');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (4, 91, 'Krowa');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (3, 81, 'Koza');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (2, 71, 'Kaczka');
INSERT INTO opiekunowie (id_k, id_p, nazwa_o) VALUES (1, 101, 'Kon');

select nazwa_o, nazwa from opiekunowie natural join klienci group by nazwa order by nazwa;
select nazwa_o, count(*) as max_sprzedaz from opiekunowie group by nazwa_o order by max_sprzedaz desc limit 1;

select nazwa,nazwa_p from opiekunowie natural left join klienci natural left join produkty  order by nazwa;


select * from opiekunowie;
select count(*) from opiekunowie;

