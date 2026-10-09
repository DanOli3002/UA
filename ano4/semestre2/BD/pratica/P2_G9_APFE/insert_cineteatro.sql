use cineteatro;

-- 1. Inserir Produtos
INSERT INTO Produtos (Codigo, Nome, Preco) VALUES 
(1, 'Pipocas', 5),
(2, 'Refrigerante', 3),
(3, 'Água', 1),
(4, 'Chocolate', 2);

-- 2. Inserir Pessoas
INSERT INTO Pessoa (NIF, Nome, Telefone, Morada) VALUES 
(123456789, 'João Silva', '912345678', 'Rua A, 123'),
(987654321, 'Maria Santos', '987654321', 'Rua B, 456'),
(111222333, 'Carlos Ferreira', '961112223', 'Av Central, 77'),
(444555666, 'Ana Pereira', '934445556', 'Praca Maior, 12');

-- 3. Inserir Clientes
INSERT INTO Cliente (FK_NIF) VALUES 
(123456789),
(987654321);

-- 4. Inserir Funcionários
INSERT INTO Funcionario (ID_Funcionario, Funcao, Salario, FK_NIF) VALUES 
(1, 'Gerente de Bar', 1200, 111222333),
(2, 'Atendente', 900, 444555666);

-- 5. Inserir Edifícios
INSERT INTO Edificio (Nome, Morada, Telefone) VALUES 
('Teatro Rivoli', 'Praça D. João I', '223392200'),
('Coliseu do Porto', 'Rua Passos Manuel', '223394940');

-- 6. Inserir Bares
INSERT INTO Bar (ID_Bar, Aberto, FK_ID_Funcionario, FK_NomeEdificio) VALUES 
(1, 1, 1, 'Teatro Rivoli'),
(2, 0, 2, 'Coliseu do Porto');

-- 7. Inserir Eventos
INSERT INTO Eventos (ID_Evento, Nome, Duracao, [Data], Tipo, FK_NomeEdificio) VALUES 
(1, 'Concerto Aniversário', '02:00:00', '2023-12-01', 'Música', 'Teatro Rivoli'),
(2, 'Peca de Teatro: O Misantropo', '01:30:00', '2023-11-15', 'Teatro', 'Coliseu do Porto');

-- 8. Inserir Bilheteiras (Tabela sem dependências)
INSERT INTO Bilheteira (ID_Bilheteira) VALUES 
(1), (2), (3);

-- 9. Inserir Bilhetes (Depende de Eventos e Bilheteira)
INSERT INTO Bilhete (Codigo, [Data], Lugar, FK_ID_Evento, FK_ID_Bilheteira) VALUES 
(1001, '2023-11-01', 'Fila A D12', 1, 1),
(1002, '2023-11-01', 'Fila A D13', 1, 1),
(1003, '2023-11-10', 'Balcão B2', 2, 2);

-- 10. Inserir Compras (Depende de Produtos, Cliente e Bar)
INSERT INTO Compra (ID_Recibo, [Data], MetodoPagamento, FK_CodigoProduto, FK_NIF_Cliente, FK_ID_Bar) VALUES 
(5001, '2023-12-01', 'MBWay', 1, 123456789, 1),
(5002, '2023-12-01', 'Numerário', 3, 123456789, 1),
(5003, '2023-11-15', 'Multibanco', 2, 987654321, 2);