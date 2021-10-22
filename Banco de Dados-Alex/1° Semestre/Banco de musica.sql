create database spotify;
use spotify;
create table musica(
idmusica int primary key ,
nome_musica varchar (60) not null,
fk_autor int not null ,
fk_pais  int not null,
fk_banda int not null,
fk_genero int not null,
foreign key (fk_autor) references autor (id_compositor),
foreign key (fk_pais) references pais (id_pais),
foreign key (fk_banda) references banda (id_banda),
foreign key (fk_genero) references genero (id_genero)
);

insert into musica values (1,"A vida é um desafio","101","150","200","1001"),(2,"In the End","102","151","201","1002"),(3,"Back in Back",
"103","152","202","1003"),(4,"Killing Me Softly With His Song","104","153","203","1004"),(5," Bohemian Rhapsody","105","154","204","1005");

select * from musica;
select * from autor;
select * from pais;
select * from banda;
select * from genero;

create table autor(
id_compositor int primary key not null auto_increment,
 nome_autor varchar (20) not null,
 idade int 
)auto_increment = 101;

insert into autor(nome_autor,idade) values("Edi Rock",52),("Robert Lange" ,72),("Robert John",78),("Lauryn Hill",46),("Freddie Mercury",null);

create table pais(
id_pais int primary key not null auto_increment,
nome_pais varchar (20) not null,
capital varchar (20)
)auto_increment= 150;

insert into pais(nome_pais,capital) values("Brasil","Brasilia"),("Estados Unidos","Whashington D.C"),("Autralia","Sydney"),("Estados Unidos","Whashington D.C"),
("Inglaterra","Londres");

create table banda(
id_banda int primary key not null auto_increment,
nome_banda varchar (30) not null,
numero_integrantes int
)auto_increment= 200;

insert into banda (nome_banda,numero_integrantes) values("Racionais",4),("Linkin Park",2),("Ac Dc",4),("Fugees",2),("Quenn",4);



create table genero(
id_genero int primary key not null auto_increment,
nome_genero varchar (20) not null
)auto_increment= 1001;

insert into genero (nome_genero) values("Rap"),("Hard Rock"),("Rock"),("Pop Rock"),("Rock");

select musica.nome_musica,autor.nome_autor from musica join autor on musica.fk_autor = autor.id_compositor; -- 2 inner join  

select musica.nome_musica,autor.nome_autor, banda.nome_banda from musica join autor on musica.fk_autor = autor.id_compositor join banda on musica.fk_banda = banda.id_banda; -- 3 join

