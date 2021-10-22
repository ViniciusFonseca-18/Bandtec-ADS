create database Faculdade;
use Faculdade;
create table Professores(
id int primary key,	
Nome char (50),
Matéria char (70));
drop table Professores;
create table Superprofessores(
id int primary key,
Nome char(50),
Matéria char(70)
);
alter table Superprofessores rename to Megaprofessores ;
-- para inserir os dados use insert into
-- para inserir o nome use " " ex: "Alex"
-- para inserir a Diciplina use " "
-- exemplo (1,"Alex","Banco de dados")
select * from Megaprofessores;
insert into Megaprofessores values ( 1, " Alex", "Banco de Dados"),(2, "Brandão", "Pesquisa e Inovação"),
(3, "Tiago", "Tecnologia e Informação"),(4, "Brian", "Assistende do Professor");
-- para apagar uma linha use (delete from ; nome da tabela;where e o id do dado
-- que você quer apagar 
delete from Megaprofessores where id=(4);
select * from Megaprofessores where Nome like'b%'; -- procurar na tabela uma letra específica
select * from Megaprofessores where Nome like '_r%'; -- procurar na tabela a segunda letra do nome(id)
UPDATE Megaprofessores SET nome = "Alexander", Matéria = "Banco de Dados" where id= "1";
desc Megaprofessores;
	
