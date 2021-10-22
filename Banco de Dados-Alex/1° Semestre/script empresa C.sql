create database SuperFacu;
use SuperFacu;
create table Empresa (
idEmpresa int primary key,
nomeEmpresa varchar (50),
responsavel varchar (40)
);

alter table Empresa modify responsavel varchar (50);

desc Empresa;

insert into Empresa values (1,"Fleury","Maria"),(2,"C6","Pedro"),(3,"Tivit","Camila"),(4,"Safra","Natalia");

select * from Empresa ;

select nomeEmpresa,responsavel from Empresa;

select * from Empresa order by nomeEmpresa ;

select * from Empresa order by responsavel desc;

select * from Empresa where nomeEmpresa like '%r%';

select * from Empresa where nomeEmpresa like 'c%';

select * from Empresa where nomeEmpresa like '%r_';

update Empresa set responsavel ="Paulo" where idEmpresa = 2;

select *from Empresa;

delete from Empresa where idEmpresa= 3;

select * from Empresa;

drop table Empresa;


