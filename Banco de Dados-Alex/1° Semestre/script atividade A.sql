use Filme;
create table Filmes(
idfilme int primary key auto_increment, 
Titulo varchar (50),
Genero varchar (50),
Diretor varchar (50));
drop table Filmes;
select * from Filmes;
insert into Filmes values ("Vingadores","Ficção","Anthony Russo"),
							("Homem Aranha","Ação","Sam Raimi"),
                            ("Infinite","Ação","Antoine Fuqua"),
                            ("Velozes e Furiosos 9","Aventura","Justin Lee");
insert into Filmes value (6,"Mulher Maravilha", "","");                            
insert into Filmes values ("Hora do Rush","7"," "," ");
alter table Filmes modify idfilme varchar (30);
-- questão 8


