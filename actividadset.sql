create database peliculas;
use peliculas;

create table pelicula(

titulo varchar(200) primary key,
fecha year,
nacion varchar(100),
idioma set ("ingles","Frances","Aleman"),
director varchar(80),
foreign key (director) references director(nombre)

);

create table director(
nombre varchar(80) primary key,
nacion set("Usa","Reino unido","Alemania")

);

create table actor(
nombre varchar(80) primary key,
nacion set("Alemana","Mexicana","Britanica")

);

create table reparto(
titulo2 varchar(200),
nombre2 varchar(80),
foreign key (titulo2) references pelicula(titulo),
foreign key (nombre2) references actor(nombre)
);

insert into director
values ("Thomas Marquez Hernandes","Reino unido");
insert into director
values ("Juan Fernando Gomez","Usa");
insert into director
values ("Larry Rivera","Alemania");
insert into director
values ("Kiera Hartman","Usa");
insert into director
values ("Emil Wiley","Reino unido");

insert into actor
values ("Antonio Jones","Mexicana");
insert into actor
values ("Monica Haley","Alemana");
insert into actor
values ("Juan Pablo Martines","Mexicana");
insert into actor
values ("Andy Hayden","Britanica");
insert into actor
values ("Sarah Knowles","Alemana");

insert into pelicula
values ("Boy Of Our Destiny","2003","Usa","ingles,frances","Juan Fernando Gomez");
insert into pelicula
values ("Gift Of Solar Flares","1997","Mexico","ingles","Kiera Hartman");
insert into pelicula
values ("Pilots And Guests","1987","Reino unido","Frances,Aleman","Larry Rivera");
insert into pelicula
values ("Martians Of The Fallen","1998","Alemania","Frances,Aleman","Emil Wiley");
insert into pelicula
values ("Cyborgs In The Past","1985","Reino unido","Ingles","Thomas Marquez Hernandes");

insert into reparto
values("Boy Of Our Destiny","Antonio Jones");
insert into reparto
values("Gift Of Solar Flares","Monica Haley");
insert into reparto
values("Pilots And Guests","Juan Pablo Martines");
insert into reparto
values("Martians Of The Fallen","Andy Hayden");
insert into reparto
values("Cyborgs In The Past","Sarah Knowles");


Select * from pelicula order by rand() limit 3;

select * from pelicula where find_in_set('ingles',idioma)>0 and fecha >"2000";

select * from director order by rand() limit 2;

select * from director where not find_in_set('Usa',nacion)>0;

select * from actor where nacion not like '%Mexicana%';


