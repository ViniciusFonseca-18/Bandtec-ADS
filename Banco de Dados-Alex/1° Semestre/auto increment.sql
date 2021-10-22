use teste;

create table alunos (
id_alunos int primary key auto_increment,
nome varchar (30),
idade varchar (30)
); 

alter table alunos auto_increment=200;

insert into alunos (nome,idade) values ("vinicius","20"),("derli","22"),("mayara","18");

select * from alunos;
desc alunos;   

