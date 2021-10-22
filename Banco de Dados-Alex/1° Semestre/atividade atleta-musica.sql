create database Atleta;
use atleta;
create table atleta(
idatleta int primary key, 
nome varchar (40) null,
modalidade varchar (40) null,
qtdemedalha int null
);

insert into atleta value (1,"Neymar","Futebol de Campo","1"),(2,"Richarlison","Futebol de Campo","1"),(3,"Kahena Kunze","Vela","2"),
(4,"Martine Grael","Vela","2"),(5,"Serginho","Voleibol","4"),(6,"Bruno Rezende","Voleibol","3"),(7,"Cesar Cielo","Natacao","3"),(8,"Gustavo Borges","Natacao","4");

select * from atleta;

select * from atleta where modalidade ="natacao";

select * from atleta order by modalidade;

 select * from atleta order by qtdemedalha desc;
 
 select * from atleta where nome like '%s%';
 
 select * from atleta where nome like 'n%';
 
 select * from atleta  where nome like '%o';
 
 select * from atleta where nome like '%r_';
 
 drop table atleta;
 
create database Musica;
use musica;
create table musica(
idmusica int primary key, 
titulo varchar (40) null,
artista varchar (40) null,
genero varchar (40)  null
);

insert into musica values (1,"A vida é um desafio","Edi Rock","Rap"),(2,"In the End","Robert Lange","Rock"),(3,"Back in Back",
"Robert John","Hard Rock"),(4,"Killing Me Softly With His Song","Lauryn Hill","Hip Hop"),(5," Bohemian Rhapsody","Freddie Mercury","Pop Rock"),(6,"Hey Jude","Os Beatles","Pop Rock"),(7,"Always On My Mind ","Elvis Presley","Rock");

select * from musica;

select titulo,artista from musica;

select * from musica where genero ="rock";

select * from musica where artista ="Freddie Mercury";

select * from musica order by titulo;

select * from musica order by artista desc;

 select * from musica where titulo like 'a%';
 
 select * from musica where artista like '%y';
 
 select * from musica where genero like '_o%';

 select * from musica where titulo like '%n_';
 
 drop table musica;





