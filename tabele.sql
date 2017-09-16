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

