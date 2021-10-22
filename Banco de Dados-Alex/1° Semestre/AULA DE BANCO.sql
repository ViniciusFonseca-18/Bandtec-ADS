create database Escola;
use Escola;
create table alunos(
ra int primary key,
nome char(50),
 bairo char(70)
 );
alter table aluno rename to superalunos;

drop table aluno;
select * from superalunos;

select ra from superalunos;

select nome from superalunos;



	
	



