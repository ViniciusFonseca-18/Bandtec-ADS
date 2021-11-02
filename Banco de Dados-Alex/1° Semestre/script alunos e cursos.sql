create database Escola_idioma;

use Escola_idioma;

create table aluno(
ra_aluno int primary key auto_increment,
Nome_aluno varchar (45),
bairro varchar (45)
)auto_increment = 100;

insert into aluno (nome_aluno,bairro) values ("Vinicius","Santa Margarida"),("Arthur","Leopoldina"),("Kauan","Vila Matilde"),
("Romaria","Interlagos"),("Poliana","Capão Redondo");

create table Curso (
idcurso int primary key,
Nome_curso varchar(45),
Nome_cordenador varchar (45)
);

insert into curso values (10,"Inglês","Alexander"),(20,"Espanhol","Marisa"),(30,"Japones","Kawasaki"),(40,"Frances","Luis");

create table Cursoaluno(
fk_aluno int,
 foreign key (fk_aluno) references aluno(ra_aluno),
 fk_curso int,
foreign key (fk_curso) references curso(idcurso),
inicio_curso date,
nota decimal (10,2),
media decimal (3,1)
) auto_increment = 1001;

insert into Cursoaluno (Fk_aluno,fk_curso,inicio_curso,nota,media) values
 (103,20, "2019-02-02",10.0,6),
 (100,30, "2017-05-20", 7.50,7),
 (102,10,"2015-10-08", 5.45,7),
 (104,10,"2019-01-12",6.50,6),
 (101,40,"2019-01-12",7.80,6),
 (101,30,"2020-10-30", 8.50,6);

select * from aluno;

select * from curso;

select * from cursoaluno;

select aluno.nome_aluno,curso.nome_curso from cursoaluno
join aluno on cursoaluno.fk_aluno = ra_aluno
join curso on cursoaluno.fk_curso = idcurso;

select aluno . *, curso.nome_curso from cursoaluno
join aluno on cursoaluno.fk_aluno = ra_aluno
join curso on cursoaluno.fk_curso = idcurso where nome_curso = "japones";

select aluno. *, curso. * from cursoaluno
join aluno on cursoaluno.fk_aluno = ra_aluno
join curso on cursoaluno.fk_curso = idcurso where ra_aluno = 101;

select sum(media) as "Soma das Média", avg(media) as "Média das Notas" from cursoaluno;
  
select min(media) as "Menor Média", max(media) as "Maior Média" from cursoaluno;

select avg(nota) from cursoaluno
join aluno on cursoaluno.fk_aluno = aluno.ra_aluno
group by aluno.ra_aluno; 





 


  
  
  