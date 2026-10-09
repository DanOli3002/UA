create database prescricao_medica

use prescricao_medica

create table medico(
	SNS bigint primary key,
	nome varchar(30),
	especialidade varchar(30)
)

create table paciente(
	N_utente bigint primary key,
	nome varchar(30),
	data_nascimento date,
	endereco varchar(30)
)

create table farmaceutica(
	NRN bigint primary key,
	nome varchar(30),
	endereco varchar(30),
	telefone varchar(9)
)

create table farmaco(
	nome varchar(30) primary key,
	formula varchar(30),
	fk_NRN bigint,
	foreign key(fk_NRN) References farmaceutica(NRN)
)

create table farmacia(
	nif bigint primary key,
	nome varchar(30),
	endereco varchar(30),
	telefone varchar(9),
	fk_nome varchar(30),
	foreign key(fk_nome) References farmaco(nome)
)

create table prescicao(
	n_prescricao bigint primary key,
	[data] date,
	fk_SNS bigint,
	fk_N_utente bigint,
	fk_nome varchar(30),
	foreign key(fk_SNS) References medico(SNS),
	foreign key(fk_N_utente) References paciente(N_utente),
	foreign key(fk_nome) References farmaco(nome)
)