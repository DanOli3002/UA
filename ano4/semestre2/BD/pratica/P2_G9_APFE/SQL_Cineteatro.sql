create database Cineteatro2;

Use cineteatro2;

CREATE TABLE Pessoa (
  NIF BIGINT PRIMARY KEY,
  Nome VARCHAR(30),
  Telefone VARCHAR(30),
  Morada VARCHAR(30)
);

CREATE TABLE Edificio (
  Nome VARCHAR(30) PRIMARY KEY,
  Morada VARCHAR(30),
  Telefone VARCHAR(30)
);

CREATE TABLE Bilheteira (
  ID_Bilheteira BIGINT PRIMARY KEY
);

CREATE TABLE Produtos (
  Codigo BIGINT PRIMARY KEY,
  Nome VARCHAR(30),
  Preco DECIMAL(10,2)
);

CREATE TABLE Cliente (
  FK_NIF BIGINT PRIMARY KEY,
  FOREIGN KEY (FK_NIF) REFERENCES Pessoa(NIF)
);

CREATE TABLE Funcionario (
  ID_Funcionario BIGINT PRIMARY KEY,
  Funcao VARCHAR(30),
  Salario DECIMAL(10,2),
  FK_NIF BIGINT,
  FOREIGN KEY (FK_NIF) REFERENCES Pessoa(NIF)
);

CREATE TABLE Bar (
  ID_Bar BIGINT PRIMARY KEY,
  Aberto BIT,
  FK_ID_Funcionario BIGINT,
  FK_NomeEdificio VARCHAR(30),
  FOREIGN KEY (FK_ID_Funcionario) REFERENCES Funcionario(ID_Funcionario),
  FOREIGN KEY (FK_NomeEdificio) REFERENCES Edificio(Nome)
);

CREATE TABLE Eventos (
  ID_Evento BIGINT PRIMARY KEY,
  Nome VARCHAR(30),
  Duracao TIME,
  [Data] DATE,
  Tipo VARCHAR(30),
  FK_NomeEdificio VARCHAR(30),
  FOREIGN KEY (FK_NomeEdificio) REFERENCES Edificio(Nome)
);

CREATE TABLE Compra (
  ID_Recibo BIGINT PRIMARY KEY,
  [Data] DATE,
  MetodoPagamento VARCHAR(30),
  FK_NIF_Cliente BIGINT,
  FK_ID_Bar BIGINT,
  FOREIGN KEY (FK_NIF_Cliente) REFERENCES Cliente(FK_NIF),
  FOREIGN KEY (FK_ID_Bar) REFERENCES Bar(ID_Bar)
);

CREATE TABLE Bilhete (
  Codigo BIGINT PRIMARY KEY,
  [Data] DATE,
  Lugar VARCHAR(30),
  FK_ID_Evento BIGINT,
  FK_ID_Bilheteira BIGINT,
  FK_ID_Recibo BIGINT,
  FOREIGN KEY (FK_ID_Evento) REFERENCES Eventos(ID_Evento),
  FOREIGN KEY (FK_ID_Bilheteira) REFERENCES Bilheteira(ID_Bilheteira),
  FOREIGN KEY (FK_ID_Recibo) REFERENCES Compra(ID_Recibo)
);

CREATE TABLE Producto_Compra (
  FK_ID_Recibo BIGINT,
  FK_CodigoProduto BIGINT,
  Quantidade INT,
  PRIMARY KEY (FK_ID_Recibo, FK_CodigoProduto),
  FOREIGN KEY (FK_ID_Recibo) REFERENCES Compra(ID_Recibo),
  FOREIGN KEY (FK_CodigoProduto) REFERENCES Produtos(Codigo)
);

CREATE TABLE Organiza (
  FK_ID_Evento BIGINT,
  FK_ID_Funcionario BIGINT,
  PRIMARY KEY (FK_ID_Evento, FK_ID_Funcionario),
  FOREIGN KEY (FK_ID_Evento) REFERENCES Eventos(ID_Evento),
  FOREIGN KEY (FK_ID_Funcionario) REFERENCES Funcionario(ID_Funcionario)
);