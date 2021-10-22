
-- Regras de Negócio:

-- Um time pode ter um ou vários jogadores;

-- Um Jogador poder ter  nenhum ou muitos seguidores;

create database futebol;

use futebol;

create table times(
idtime int primary key,
nome_time varchar (45) not null, 
quantidade_jogador int,
 check(quantidade_jogador > 23 or quantidade_jogador <70), 
quantidade_seguidor decimal not null,
fk_jogador int not null, 
foreign key (fk_jogador) references jogador(idjogador)
);

desc times;

insert into times values(1,"Tricolor",40,3000,"104"),(2,"Flamengo",45,5000,"102"),(3,"Corinthians",60,4000,"103"),(4,"Santos",35,3500,"101");

select * from time;

create table jogador(
idjogador int primary key auto_increment,
nome_jogador varchar (45) not null, 
idade_jogador decimal,
 check(idade_jogador >= 18 or idade_jogador <=40), 
data_contrato date, 
posicao varchar (45)not null,
fk_seguidor int, 
foreign key (fk_seguidor) references seguidor(idseguidor)
)auto_increment=101;

desc jogador;

insert into jogador(nome_jogador,idade_jogador,data_contrato,posicao,fk_seguidor) values("Pituca",68,20160820,"Meia-Atacante",null),("Gabriel Barbosa",28,20170530,"Meia","1003"),("Cássio",30,20180818,"Goleiro","1001"),("Emiliano Rigoni",25,20210530,"Atacante","1002");

select * from jogador;

create table seguidor(
idseguidor int primary key auto_increment,
nome_seguidor varchar (45) not null, 
idade_seguidor decimal,
 check(idade_seguidor >= 18 or idade_seguidor <=100), 
data_nascimento date not null,
cidade varchar (45) not null
)auto_increment=1001;

desc seguidor;

insert into seguidor(nome_seguidor,idade_seguidor,data_nascimento,cidade) values("Victor",25,19970325,"Tatui"),("Guilherme Herique",20,20011002,"São Paulo"),("Arthur",30,19920815,"Recife"),("Alexandre",70,19901221,"Santos");

select * from seguidor;

-- update tabela time
update time set nome_time="São Paulo" where idtime=1;

select * from time;

-- update tabela jogador
update jogador set nome_jogador="Marinho" where idjogador=101;

select * from jogador;

-- calculo tabela time

select avg(quantidade_seguidor) as "Média da quantidade dos jogadores" from times;

select sum(quantidade_seguidor) as "Soma da quatidade dos jogadres" from times;

-- calculo tabela jogador
select avg(truncate(idade_jogador,2)) as "Média das idades dos Jogadores" from jogador;

select sum(idade_jogador) as "Soma das idades dos jogadores" from jogador;

-- calculo tabela seguidor
select avg (idade_seguidor) as "Média das Idades dos Jogadoes" from seguidor;

select sum(idade_seguidor) as "Soma das Idades dos Seguidores" from seguidor;
 
 -- join tabela jogadores e seguidores
 
 select jogador. *, seguidor.* from jogador inner join seguidor on jogador.fk_seguidor = jogador.idjogador;
 
 select times.*, jogador.* from times inner join jogador on times.fk_jogador = jogador.idjogador where idjogador= 104;
 
 



