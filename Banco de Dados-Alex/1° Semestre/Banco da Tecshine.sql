CREATE DATABASE TecShine;
USE TecShine;

create table cadastro_imobiliaria(
idImobiliaria int primary key,
nome varchar(40),
cnpj varchar(20) ,
nome_responsavel varchar(40),
telefone varchar(30),
cep varchar(20),
email varchar(40),
acessosSimuntaneos varchar(10)
);

create table cadastro_condominio(
idCondominio int primary key,
nome varchar(40),
cnpj varchar (20),
nome_responsavel varchar(40),
telefone varchar(30),
cep varchar(20),
email varchar(40)
);

create table login_cliente(
cnpj varchar (20) ,
senha varchar(40)

);

CREATE TABLE Sensor(
	idSensor int primary key auto_increment,
    nomeSensor varchar(30),
    latitude decimal,
    longitude decimal,
    typeSensor_id int,
    espaco_id int
);

CREATE TABLE Tipo_Sensor(
	idTipoSensor int primary key auto_increment,
    nomeTipoSensor varchar(30)
);

CREATE TABLE Espaco(
	idEspaco int primary key auto_increment,
    nomeEspaco varchar(30),
    andar int,
    padraoIntensidade int
);

CREATE TABLE Sensor_Proximidade_Registro(
	idSensorProximidade int primary key auto_increment,
    sensor_id int,
        horaRegistro date,
    valor int
);

CREATE TABLE Sensor_Luminosidade_Registro(
	idSensorProximidade int primary key auto_increment,
    sensor_id int,
    horaRegistro date,
    valorInicial int,
    valorFinal int
);

