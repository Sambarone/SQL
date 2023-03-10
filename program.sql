drop database if exists firma;
create database firma;
use firma;

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    cijena decimal (18,2)
);

create table programer (
    sifra int not null primary key auto_increment,
    ime varchar (50),
    prezime varchar (50),
    datum_rodjenja date,
    placa decimal (18,2)

);


create table sudjeluje (
    programer int,
    projekt int,
    datum_pocetka date,
    daum_kraja date

);
alter table sudjeluje add foreign key (programer) references programer (sifra);
alter table sudjeluje add foreign key (projekt) references projekt (sifra);