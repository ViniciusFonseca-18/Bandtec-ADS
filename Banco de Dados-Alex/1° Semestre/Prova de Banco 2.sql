
-- Vinicius Fonseca Barbosa
create database personal;

-- Vinicius Fonseca Barbosa
use personal;

-- Vinicius Fonseca Barbosa
create table personal(
idpersonal int primary key auto_increment,
nome_personal varchar (45),
área_atuação varchar (45),
telefone int,
hora_aula decimal 
)auto_increment=1000;

create table alunos(
idalunos int primary key,
nome_aluno varchar (45),
data_nascimento date,
fk_personal int not null,
foreign key (fk_personal) references personal(idpersonal) 
); 

-- Vinicius Fonseca Barbosa
insert into personal (nome_personal,área_atuação,telefone,hora_aula) values ("Kauan","Boxe",97653-2344,14.00),("Thiago","Musculação",98625-2094,15.00),
("Fernanda","Pilates",90203-2732,20.00);

insert into alunos values (1,"Igor",19950313,1000),(2,"Arthur",20000513,1000),(3,"Cassia",19800313,1002),
(4,"Karina",19901213,1001),(5,"Kevin",19910920,1001);


