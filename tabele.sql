CREATE TABLE klienci (
    id_k INT,
    nazwa TEXT,
    NIP TEXT,
    primary key(id_k)
);


INSERT INTO tabele (nazwa, NIP) VALUES ('Krawczyk', '5431234398');
INSERT INTO tabele (nazwa, NIP) VALUES ('Santor', '5431223398');
INSERT INTO tabele (nazwa, NIP) VALUES ('Gorniak', '5431234000');
INSERT INTO tabele (nazwa, NIP) VALUES ('Piaseczny', '1231238765');
INSERT INTO tabele (nazwa, NIP) VALUES ('Dzikus', '5431234300');

create database tabele;
#drop database tabele;
use tabele;


#drop table klienci

CREATE TABLE opiekunowie (
    id_o INT auto_increment,
    id_k int,
    id_p int,
    nazwa TEXT,
    primary key(id_o),
    foreign key (id_k) references klienci
);
#drop table opiekunowie
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('1', '11', 'Kon');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('2', '21', 'Kaczka');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('3', '31', 'Koza');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('4', '41', 'Krowa');
INSERT INTO opiekunowie (id_k, id_p, nazwa) VALUES ('5', '51', 'Alpaka');




