USE p2g9
GO
CREATE VIEW dbo.vw_BaresDetalhados
AS
SELECT
    b.ID_Bar AS [ID do Bar],
    b.FK_ID_Funcionario,
    b.FK_NomeEdificio AS [Edifício],
    CASE
        WHEN b.Aberto = 1 THEN 'Aberto'
        ELSE 'Fechado'
    END AS [Estado],
    ISNULL(p.Nome, 'Sem Funcionário') AS [Funcionário Ativo]
FROM dbo.Bar b
LEFT JOIN dbo.Funcionario f ON b.FK_ID_Funcionario = f.ID_Funcionario
LEFT JOIN dbo.Pessoa p ON f.FK_NIF = p.NIF;
GO

CREATE VIEW dbo.vw_FuncionariosDetalhados
AS
SELECT
    f.ID_Funcionario,
    p.Nome,
    f.Funcao,
    f.Salario,
    p.NIF,
    p.Telefone,
    p.Morada
FROM dbo.Funcionario f
INNER JOIN dbo.Pessoa p ON f.FK_NIF = p.NIF;
GO

CREATE VIEW dbo.vw_Produtos
AS
SELECT
    Codigo,
    Nome,
    Preco
FROM dbo.Produtos;
GO

CREATE VIEW dbo.vw_HistoricoVendasBar
AS
SELECT
    c.ID_Recibo AS Recibo,
    c.FK_ID_Bar AS ID_Bar,
    p.Nome AS Produto,
    pc.Quantidade AS Qtd,
    (pc.Quantidade * p.Preco) AS [Total (€)],
    c.MetodoPagamento AS Pagamento,
    ISNULL(CAST(c.FK_NIF_Cliente AS VARCHAR), 'Cons. Final') AS NIF
FROM dbo.Compra c
INNER JOIN dbo.Producto_Compra pc ON c.ID_Recibo = pc.FK_ID_Recibo
INNER JOIN dbo.Produtos p ON pc.FK_CodigoProduto = p.Codigo;
GO

CREATE VIEW dbo.vw_Eventos
AS
SELECT *
FROM dbo.Eventos;
GO

CREATE VIEW dbo.vw_Bilheteiras
AS
SELECT
    ID_Bilheteira
FROM dbo.Bilheteira;
GO

CREATE VIEW dbo.vw_Edificios
AS
SELECT
    Nome
FROM dbo.Edificio;
GO

CREATE VIEW dbo.vw_Bilhetes
AS
SELECT *
FROM dbo.Bilhete;
GO