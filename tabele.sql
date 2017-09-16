create database tabele;
#drop database tabele;
use tabele;

CREATE TABLE klienci (
    id_k INT,
    nazwa TEXT,
    NIP TEXT,
    primary key(id_k)
);

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
