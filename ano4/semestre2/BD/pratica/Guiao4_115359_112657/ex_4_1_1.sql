use rentcar

create table cliente(
	nif bigInt primary key,
	nome varChar(30),
	endereco varChar(30),
	num_carta bigInt unique
)

create table balcao(
	numero bigInt primary key,
	nome varChar(30),
	endereco varChar(30)
)

create table tipo_veiculo(
	codigo bigInt primary key,
	designacao varChar(30),
	arcondicionado bit
)

create table pesado(
	fk_codigo bigInt primary key,
	foreign key(fk_codigo) References tipo_veiculo(codigo),
	passageiros int,
	peso float
)

create table ligeiros(
	fk_codigo bigInt primary key,
	foreign key(fk_codigo) References tipo_veiculo(codigo),
	portas int,
	numlugares int
)

create table veiculo(
	matricula varChar(8) primary key,
	ano date,
	marca varChar(20),
	fk_codigo bigInt,
	foreign key(fk_codigo) References tipo_veiculo(codigo)
)

create table aluguer(
	numero bigInt primary key,
	duracao varChar(20),
	[data] date,
	fk_nif bigInt,
	fk_numero bigInt,
	fk_matricula varChar(8),
	foreign key(fk_nif) References cliente(nif),
	foreign key(fk_numero) References balcao(numero),
	foreign key(fk_matricula) References veiculo(matricula)
)

create table similaridades(
	fk_codigo1 bigInt not null,
	fk_codigo2 bigInt not null,
	primary key(fk_codigo1, fk_codigo2),
	foreign key(fk_codigo1) References tipo_veiculo(codigo),
	foreign key(fk_codigo2) References tipo_veiculo(codigo)
)