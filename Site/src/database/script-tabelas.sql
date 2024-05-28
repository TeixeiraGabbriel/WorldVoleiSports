-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE VoleiSports;
USE VoleiSports;

CREATE TABLE usuarioCadastro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);
select* from usuarioCadastro;


CREATE TABLE interacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(200),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuarioCadastro(id)
);
select* from interacao;

 
DROP DATABASE VoleiSports;