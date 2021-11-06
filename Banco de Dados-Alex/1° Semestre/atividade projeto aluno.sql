create database bandtec;

use bandtec;

CREATE TABLE projeto(
idprojeto int primary key auto_increment,
nome_projeto varchar (45),
descrição varchar (45)
);

create table aluno(
ra_aluno int auto_increment,
nome_aluno varchar (45),
telefone decimal (10,2),
primary key (ra_aluno,fk_representante),
fk_representante int, 
foreign key (fk_representante) references aluno(ra_aluno),
fk_projeto int,
foreign key (fk_projeto) references projeto(idprojeto)
);

CREATE TABLE acompanhates(
idacompanhante int ,
PRIMARY KEY(fk_representante,idacompanhante),
nome_acompanhante VARCHAR (45),
grau_parentesco VARCHAR (45),
fk_aluno int,
foreign key (fk_aluno) REFERENCES aluno(ra_aluno)
);

INSERT INTO projeto (nome_projeto,descricao) VALUES 
('Mush Solutions', 'Solução Iot para o setor agrícola'),
('', ''),
('', ''),
('', '');

INSERT INTO aluno (nome_aluno) VALUES
;

