create database musica;
use musica;
create table musica(
id_musica int primary key,
nome_musica varchar (30) not null,
fk_autor int not null,
foreign key (fk_autor) references autor(id_autor)
);

insert into musica values (1,"Céu azul",100),(2,"Ela Partiu",101),(3,"Só os loucos sabem",100),(4,"Burguesinha",102);

select * from musica;

create table autor(
id_autor int primary key auto_increment,
nome_autor varchar (30),
idade int  
)auto_increment = 100;

insert into autor(nome_autor,idade) values("Chorão",34),("Tim Maia",73),(null,64);

select * from autor;

select musica.nome_musica,autor.nome_autor from musica inner join autor on musica.fk_autor = autor.id_autor; -- inner join

select nome_musica from musica left join autor on musica.fk_autor = autor.id_autor; -- left join 

select nome_autor,idade from autor right join musica on autor.id_autor = musica.fk_autor; -- right join

select 




 