create database Petshop;
use Petshop;

create table pets(
idpets int primary key auto_increment,
tipo_animal varchar (45) not null,
nome_pets varchar (45) not null,
raça varchar (45)  not null,
data_nascimento date not null,
fk_cliente int not null,
foreign key (fk_cliente) references clientes (idclientes)
) auto_increment = 100;

select * from pets;

insert into pets(tipo_animal, nome_pets, raça,data_nascimento,fk_cliente) values ("Cachorro","Renatin","Pinscher", 20191203, "1"),("Gato","Leonardo","Persa", 20191203, "2"),
("Peixe","Lilo","Palhaço", 20200107, "2"),("Papagaio","Chico","Ecletus", 20150327, "3"),("Cachorro","Marquinhos","Bulldog", 20210518, "4"),
("Vaca","Mimosa","Limousin", 20101230, "5");

select * from clientes;

create table clientes(
idclientes int primary key,
nome_clientes varchar (45) not null,
sobrenome_clientes varchar (45) not null, 
telefone_fixo varchar (30),
telefone_celular varchar (30),
endereço varchar (60) not null,
bairro varchar (50) 
);

insert into clientes values ("1","Igor","Carvalho","5868-3483","9-9235-5255","Rua Chilofe,990","Nona Paula"),("2","Maria","Silva","5834-3536",null,"Rua Lobo,92","Jardim Fechado"),
("3","Marcelo","Carvalho",null,"9-9235-5255","Rua Mufasa,1","Chácara Remo"),("4","Guilherme","Souza",null,"9-9325-5798","Rua Capão Bonito,99","Campo Limpo"),("5","José","Anatolio",null,"9-9905-5865","Estrada de Terra,1390", "Jurumirim");

alter table clientes modify nome_clientes varchar (60);

desc clientes;

select * from pets where tipo_animal = "cachorro"; 

select nome_pets,data_nascimento from pets; 

select * from pets order by nome_pets;

select * from clientes order by bairro desc;

select * from pets where nome_pets like 'm%'; 
 
select * from clientes where sobrenome_clientes = "carvalho";

update clientes set telefone_fixo= "58986210" where idclientes=1;

select * from clientes;

select pets.*,clientes.* from pets inner join clientes on pets.fk_cliente = idclientes;  

select pets.*,clientes.* from pets inner join clientes on pets.fk_cliente = idclientes where idclientes=3;

delete from pets where idpets=105;

select * from pets;

drop table clientes,pets;
