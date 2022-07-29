CREATE DATABASE prova;
USE prova;

CREATE TABLE usuario
   (idCliente                      INT(10)       NOT NULL,
    dataNascimento 				   DATE          NOT NULL,
    nome                           VARCHAR(50)   NOT NULL,
	PRIMARY KEY (idCliente));
	
insert into usuario (idCliente,dataNascimento,nome) 
values (1515310012,'1995-01-27','raul henrique');

CREATE TABLE celular
   (idCelular            			   INT(10)       NOT NULL,
    aparelho                           VARCHAR(50)   NOT NULL,
	valor	                           DECIMAL(11,2)   NOT NULL,
	PRIMARY KEY (idCelular),
	FOREIGN KEY (idCliente) REFERENCES usuario(idCliente));
	
insert into celular (idCelular,aparelho,valor,idCliente)
values (01,'Smartphone Xiaomi Redmi 9C', 1299.00,1515310012);
insert into celular (idCelular,aparelho,valor,idCliente)
values (02,'Smartphone Samsung Galaxy Note 20', 7999.00,1515310012);
insert into celular (idCelular,aparelho,valor,idCliente)
values (03,'Celular Multilaser Vita IV Tela 1.8 Polegadas Dual Chip 2G Bluetooth P9120', 129.00,1515310012);