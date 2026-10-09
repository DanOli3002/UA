create database gestao_stocks

use gestao_stocks

create table producto(
	codigo bigInt primary key,
	nome varChar(30),
	preco float,
	taxa_iva float,
	stock int
)

create table tipo_fornecedor(
	codigo_interno bigInt primary key,
	designacao varChar(30)
)

create table condicoes_pagamento(
	forma_de_pagamento varChar(30) primary key
)

create table fornecedor(
	nif bigInt primary key,
	nome varChar(30),
	FAX varChar(30),
	endreco varChar(30),
	fk_codigo_interno bigInt,
	fk_forma_de_pagamento varChar(30),
	foreign key(fk_codigo_interno) References tipo_fornecedor(codigo_interno),
	foreign key(fk_forma_de_pagamento) References condicoes_pagamento(forma_de_pagamento)
)

create table encomenda(
	numero bigInt primary key,
	fk_nif bigInt,
	fk_codigo bigInt,
	data date,
	foreign key(fk_nif) References fornecedor(nif),
	foreign key(fk_codigo) References producto(codigo)
)