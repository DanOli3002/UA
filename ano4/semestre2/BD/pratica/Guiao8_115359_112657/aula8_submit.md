# BD: Guião 8


## ​8.1
 
### *a)*

```
CREATE PROCEDURE DeleteEmployeeSsn @Ssn varchar(9)
AS
BEGIN
    DELETE FROM Dependents
    WHERE @Ssn = Essn;

    DELETE FROM Works_on
    WHERE @Ssn = Essn;

    UPDATE Employee
    SET Super_ssn = NULL
    WHERE @Ssn = Super_ssn;

    UPDATE Department
    SET Mgr_ssn = NULL
    WHERE @Ssn = Mgr_ssn;

    DELETE FROM Employee
    WHERE @Ssn = Ssn;
END;
GO

EXEC DeleteEmployeeSsn 1111111;
```
```
- Necessário ter em conta as dependências do campo ssn em outras tabelas, neste caso seria mais o do Department, onde o Mgr_ssn também teria que ser apagado
```


### *b)* 

```
CREATE PROCEDURE GetDepartmentManagersList
AS
BEGIN
    SELECT 
        E.fname AS Nome,
        E.Lname AS Apelido,
        E.Ssn AS Ssn_Gestor,
        D.Dname AS Departamento,
        D.Mgr_start_date AS Data_Inicio_Gestor,
        DATEDIFF(YEAR, D.Mgr_start_date, GETDATE()) AS Anos_Como_Gestor,
        
        FIRST_VALUE(E.Ssn) OVER (ORDER BY D.Mgr_start_date ASC) AS Ssn_Gestor_Mais_Antigo,
        FIRST_VALUE(DATEDIFF(YEAR, D.Mgr_start_date, GETDATE())) OVER (ORDER BY D.Mgr_start_date ASC) AS Anos_Gestor_Mais_Antigo
    FROM 
        dbo.Employee E
    INNER JOIN 
        dbo.Department D ON E.Ssn = D.Mgr_ssn;
END;
GO

EXEC GetDepartmentManagersList;
```

### *c)* 

```
CREATE TRIGGER trg_LimiteGestorDepartamento
ON dbo.Department
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(Mgr_ssn) 
    BEGIN
        IF EXISTS (
            SELECT Mgr_ssn 
            FROM dbo.Department
            WHERE Mgr_ssn IN (SELECT Mgr_ssn FROM inserted WHERE Mgr_ssn IS NOT NULL)
            GROUP BY Mgr_ssn
            HAVING COUNT(*) > 1
        )
        BEGIN
            RAISERROR('Erro: O funcionário indicado já é gestor de outro departamento.', 16, 1);
            ROLLBACK TRANSACTION;
        END
    END
END;
GO
```

### *d)* 

```
CREATE TRIGGER trg_ValidaSalarioFuncionario
ON dbo.Employee
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF TRIGGER_NESTLEVEL() > 1 
        RETURN;

    IF UPDATE(Salary) OR UPDATE(Dno)
    BEGIN
        UPDATE E
        SET E.Salary = M.Salary - 1
        FROM dbo.Employee E
        INNER JOIN inserted I ON E.Ssn = I.Ssn
        INNER JOIN dbo.Department D ON I.Dno = D.Dnumber
        INNER JOIN dbo.Employee M ON D.Mgr_ssn = M.Ssn
        WHERE I.Salary > M.Salary 
        AND I.Ssn <> M.Ssn; 
    END
END;
GO
```

### *e)* 

```
CREATE FUNCTION dbo.fn_ProjetosFuncionario (@Ssn INT)
RETURNS TABLE
AS
RETURN 
(
    SELECT 
        P.Pname AS Nome_Projeto, 
        P.Plocation AS Localizacao
    FROM 
        dbo.Project P
    INNER JOIN 
        dbo.Works_on W ON P.Pnumber = W.Pno
    WHERE 
        W.Essn = @Ssn
);
GO

SELECT * FROM dbo.fn_ProjetosFuncionario(21312332);
```

### *f)* 

```
CREATE FUNCTION dbo.fn_FuncionariosAcimaMediaDepto (@Dno INT)
RETURNS TABLE
AS
RETURN 
(
    SELECT 
        fname AS Nome,
        Lname AS Apelido,
        Ssn,
        Salary AS Vencimento
    FROM 
        dbo.Employee
    WHERE 
        Dno = @Dno 
        AND Salary > (
            SELECT AVG(Salary) 
            FROM dbo.Employee 
            WHERE Dno = @Dno
        )
);
GO

SELECT * FROM dbo.fn_FuncionariosAcimaMediaDepto(2);
```

### *g)* 

```
USE Empresa;
GO

CREATE FUNCTION dbo.fn_OrcamentoProjetosDepartamento (@Dnum INT)
RETURNS @ResultTable TABLE (
    Nome_Projeto VARCHAR(100),
    Orcamento_Mensal DECIMAL(18,2),
    Valor_Acumulado DECIMAL(18,2)
)
AS
BEGIN
    DECLARE @Valor_Acumulado DECIMAL(18,2) = 0;
    DECLARE @Nome_Projeto VARCHAR(100);
    DECLARE @Orcamento_Mensal DECIMAL(18,2);

    DECLARE cur_Projetos CURSOR FOR
        SELECT P.Pname,
               ISNULL(SUM((E.Salary / 160) * W.Hours * 4), 0) AS OrcamentoMensal 
        FROM dbo.Project P
        LEFT JOIN dbo.Works_on W ON P.Pnumber = W.Pno
        LEFT JOIN dbo.Employee E ON W.Essn = E.Ssn
        WHERE P.Dnum = @Dnum
        GROUP BY P.Pnumber, P.Pname
        ORDER BY P.Pname;

    OPEN cur_Projetos;
    FETCH NEXT FROM cur_Projetos INTO @Nome_Projeto, @Orcamento_Mensal;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @Valor_Acumulado = @Valor_Acumulado + @Orcamento_Mensal;
        
        INSERT INTO @ResultTable (Nome_Projeto, Orcamento_Mensal, Valor_Acumulado)
        VALUES (@Nome_Projeto, @Orcamento_Mensal, @Valor_Acumulado);

        FETCH NEXT FROM cur_Projetos INTO @Nome_Projeto, @Orcamento_Mensal;
    END;

    CLOSE cur_Projetos;
    DEALLOCATE cur_Projetos;

    RETURN;
END;
GO

SELECT * FROM dbo.fn_OrcamentoProjetosDepartamento(2);
```

### *h)* 

```
CREATE TRIGGER dbo.trg_AfterDelete_Department
ON dbo.Department
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Department_deleted'))
    BEGIN
        CREATE TABLE dbo.Department_deleted (
            Dname VARCHAR(50),
            Dnumber INT,
            Mgr_ssn INT,
            Mgr_start_date DATE
        );
    END;

    INSERT INTO dbo.Department_deleted (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
    SELECT Dname, Dnumber, Mgr_ssn, Mgr_start_date
    FROM deleted;
END;
GO

CREATE TRIGGER dbo.trg_InsteadOfDelete_Department
ON dbo.Department
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Department_deleted'))
    BEGIN
        CREATE TABLE dbo.Department_deleted (
            Dname VARCHAR(50),
            Dnumber INT,
            Mgr_ssn INT,
            Mgr_start_date DATE
        );
    END;

    INSERT INTO dbo.Department_deleted (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
    SELECT Dname, Dnumber, Mgr_ssn, Mgr_start_date
    FROM deleted;

    DELETE D
    FROM dbo.Department D
    INNER JOIN deleted del ON D.Dnumber = del.Dnumber;
END;
GO
```
```
AFTER DELETE:
- vantagens: Processado apenas depois que o Motor SQL aplicou restrições de integridade (ex: chaves estrangeiras).
- desvantagens: Qualquer erro durante a execução do trigger irá causar o rollback da transação, o que pode levar à perda de dados.

INSTEAD OF DELETE:
- vantagens: Permite ignorar a ação padrão sob certas condições ou modificar o comportamento base.
- desvantagens: Anula comportamentos automáticos como o ON DELETE CASCADE das Chaves Estrangeiras correspondentes, exigindo que você programe manualmente as deleções das hierarquias, sob risco de corromper a regra de negócios.
```

### *i)* 

```
O desempenho das stored procedures tem a lógica a ser executada próxima dos dados, reduz-se a sobrecarga de comunicação entre a aplicação e a base de dados. Além disso, permite otimizar mais facilmente os índices e a estrutura da base de dados, tendo em conta o comportamento previsível das chamadas.
Sobre a usabilidade, a simplicidade de chamar um procedimento em vez de escrever SQL dinâmico ou ad hoc ajuda a quem programa. Também contribui para uma maior integridade dos dados, já que a lógica crítica está concentrada e pode ser testada com maior facilidade. Em termos de segurança, limitar o acesso direto às tabelas e permitir apenas a execução de stored procedures é uma prática comum para proteger os dados.
As UDF's partilham muitas destas vantagens, incluindo compilação e otimização, mas têm características próprias que as tornam particularmente úteis em determinados contextos. Permitem encapsular expressões ou cálculos complexos que podem ser reutilizados em várias queries. Ao contrário das stored procedures, as UDFs podem ser utilizadas diretamente em instruções SELECT, WHERE e HAVING, tal como uma função normal. Além disso, aceitam parâmetros oferecendo uma maior flexibilidade. Isto permite, por exemplo, criar funções que calculem valores agregados ou que transformem dados de forma dinâmica.
As grandes diferenças entre os dois é que os stored procedures podem retornar múltiplos conjuntos de resultados e suportam parâmetros de entrada e saída, enquanto as UDFs só aceitam parâmetros de entrada e devolvem um único valor escalar ou uma tabela. SPs também suportam chamadas a outras procedures, tratamento de exceções com TRY...CATCH e utilização de transações (BEGIN TRAN, COMMIT, ROLLBACK), o que não é possível com UDFs.
```
