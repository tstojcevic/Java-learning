# C:\Users\Korisnik\Documents\Java-learning\zadatak3.sql

drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table zaposlenik (
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    placa decimal,
    nadredeni int
);

alter table zaposlenik add foreign key (nadredeni) references zaposlenik(sifra);
