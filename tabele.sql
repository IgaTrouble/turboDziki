<<<<<<< HEAD
drop table tabele;

CREATE TABLE tabele (
    id_k INT primary key auto_increment,
=======
create database tabele;
#drop database tabele;
use tabele;

CREATE TABLE klienci (
    id_k INT,
>>>>>>> c6d77a1... aktualizacja tabeli 1
    nazwa TEXT,
    NIP TEXT
);

<<<<<<< HEAD
INSERT INTO tabele (nazwa, NIP) VALUES ('Krawczyk', '5431234398');
INSERT INTO tabele (nazwa, NIP) VALUES ('Santor', '5431223398');
INSERT INTO tabele (nazwa, NIP) VALUES ('Gorniak', '5431234000');
INSERT INTO tabele (nazwa, NIP) VALUES ('Piaseczny', '1231238765');
INSERT INTO tabele (nazwa, NIP) VALUES ('Dzikus', '5431234300');
=======
#drop table klienci
>>>>>>> c6d77a1... aktualizacja tabeli 1
