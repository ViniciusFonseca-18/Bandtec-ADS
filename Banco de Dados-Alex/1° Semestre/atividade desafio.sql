create database Competição;
use Competição;
create table pais(
idPais int primary key auto_increment,
Pais varchar (20),
Presidente varchar (30),
Capital varchar (30),
Idioma varchar (10)
)auto_increment=100;

select * from pais;

insert into pais(Pais,Presidente,Capital,Idioma) values ("Brasil","Jair Bolsonaro","Brasilia","Portugues"),
														("França","Emmanuel Macron","Paris","Frances"),
														("Estados Unidos","Joe Biden","Washington, D.C","Ingles"),
														("Irlanda","Michael Higgins","Dublin","Ingles");	
                        
select * from pais;
				
CREATE TABLE atleta (
    id_atleta int primary key auto_increment,
    Nome varchar(20),
    idade varchar(30),
    Modalidade varchar(30),
    Altura float ,
    fk_pais int,
    foreign key (fk_pais) references pais (idpais)
)  AUTO_INCREMENT=1000;


insert into atleta(nome,idade,Modalidade,Altura,fk_pais) values ("Grabriel Medina","24","Surf",1.80,100),
																("Paul Pogba","27","Futebol",1.91,101),
																("Simone Biles","24","Gisnastica",1.42,102),
																("Kellie Harrington","31","Boxe",1.69,103);
                                                                
select * from atleta;

select atleta.*, pais.Presidente, pais.pais from atleta inner join pais on atleta.fk_pais = idPais;

select atleta.nome, atleta.modalidade, pais.pais from atleta inner join pais on atleta.fk_pais = idPais;

create table modalidade (
id_modalidade int primary key auto_increment,
nome_modalidade varchar (30) not null,
quantidade_de_jogadores int not null,
quantidade_de_juizes int not null,
local_praticado varchar (30)
) auto_increment 1001;


insert into modalidade(nome_modalidade,quantidade_de_jogadores,quantidade_de_juizes,local_praticado) values ("Surf","10","5","Praia"),
																										("Futebol","22","4","Campo de Futebol"),
																										("Ginastica","10","5","Praia"),
																										("Boxe","2","1","Ringue");
                                                                                                       
                                                                                                       
-- O Ateleta só pode ter um pais e uma modalidade, o País pode ter muitos atletas e muitas modalidades e a modadalidade pode ter muitos atletas e muitos paises.