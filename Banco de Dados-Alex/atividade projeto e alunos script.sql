create database sprint;

use sprint;

create table grupo(
idGrupo int primary key,
nome_grupo varchar(45),
Descricao_projeto varchar (45)
);

create table aluno(
ra_aluno int primary key,
nome_aluno varchar (45),
email varchar (45)
);

create table professor(
idprofessor int primary key,
nome_professor varchar (45),
diciplina varchar (45)
);

create table avaliacao_sprint (
primary key(idavaliacao,fk_professor,fk_grupo,fk_aluno),
idavaliacao int,
data_hora datetime,
nota decimal (5,2),
fk_professor int ,
foreign key (fk_professor) references professor(idprofessor),
fk_grupo int ,
foreign key (fk_grupo) references grupo(idgrupo),
fk_aluno int,
foreign key (Fk_aluno) references aluno(ra_aluno)
);