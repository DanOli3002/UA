create database gestao_ATL

use gestao_ATL

create table professor(
	n_funcionario bigint primary key,
	n_CC varChar(12) unique,
	morada varChar(30),
	nascimento date,
	email varChar(30) unique,
	telefone varChar(9)
)

create table atividade(
	identificador bigint primary key,
	designacao varChar(30),
	custo float
)

create table encarregado_de_educacao(
	n_CC varChar(12) primary key,
	nome varChar(30),
	morada varChar(30),
	nascimento date,
	email varChar(30) unique,
	telefone varChar(9),
	relacionamento varChar(30)
)

create table pessoa_autorizada(
	n_CC varChar(12) primary key,
	nome varChar(30),
	morada varChar(30),
	nascimento date,
	email varChar(30) unique,
	telefone varChar(9)
)

create table turma(
	identificador bigint primary key,
	ano_letivo varChar(4),
	designacao varChar(30),
	escolariedade varChar(30),
	n_maximo int,
	fk_n_funcionario bigint,
	fk_identificador bigint,
	foreign key(fk_n_funcionario) References professor(n_funcionario),
	foreign key(fk_identificador) References atividade(identificador)
)

create table aluno(
	n_CC varChar(12) primary key,
	nome varChar(30),
	morada varChar(30),
	nascimento date,
	fk_n_CC_encarregado varChar(12),
	fk_n_CC_pessoa_autorizada varChar(12),
	fk_identificador bigint,
	foreign key(fk_n_CC_encarregado) References encarregado_de_educacao(n_CC),
	foreign key(fk_n_CC_pessoa_autorizada) References pessoa_autorizada(n_CC),
	foreign key(fk_identificador) References turma(identificador)
)