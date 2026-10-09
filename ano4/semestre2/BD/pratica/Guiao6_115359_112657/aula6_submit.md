# BD: Guião 6

## Problema 6.1

### *a)* Todos os tuplos da tabela autores (authors);

```
SELECT * FROM authors;
```

### *b)* O primeiro nome, o último nome e o telefone dos autores;

```
SELECT au_fname, au_lname, phone FROM authors;
```

### *c)* Consulta definida em b) mas ordenada pelo primeiro nome (ascendente) e depois o último nome (ascendente); 

```
SELECT au_fname, au_lname, phone FROM authors
ORDER BY au_fname ASC, au_lname ASC;
```

### *d)* Consulta definida em c) mas renomeando os atributos para (first_name, last_name, telephone); 

```
SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone FROM authors
ORDER BY first_name, last_name;
```

### *e)* Consulta definida em d) mas só os autores da Califórnia (CA) cujo último nome é diferente de ‘Ringer’; 

```
SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone FROM authors
WHERE state = 'CA' AND au_lname != 'Ringer'
ORDER BY first_name, last_name;
```

### *f)* Todas as editoras (publishers) que tenham ‘Bo’ em qualquer parte do nome; 

```
SELECT * FROM publishers
WHERE pub_name LIKE '%Bo%';
```

### *g)* Nome das editoras que têm pelo menos uma publicação do tipo ‘Business’; 

```
SELECT pub_name FROM publishers
WHERE pub_id IN (SELECT DISTINCT pub_id FROM titles WHERE type = 'Business');
```

### *h)* Número total de vendas de cada editora; 

```
SELECT publishers.pub_id, publishers.pub_name, SUM(sales.qty) AS total_sales
FROM ((sales JOIN titles ON sales.title_id = titles.title_id) JOIN publishers ON titles.pub_id = publishers.pub_id)
GROUP BY publishers.pub_id, publishers.pub_name;
```

### *i)* Número total de vendas de cada editora agrupado por título; 

```
SELECT publishers.pub_id, publishers.pub_name, titles.title_id, titles.title, SUM(sales.qty) AS total_sales
FROM ((sales JOIN titles ON sales.title_id = titles.title_id) JOIN publishers ON titles.pub_id = publishers.pub_id)
GROUP BY publishers.pub_id, publishers.pub_name, titles.title_id, titles.title;
```

### *j)* Nome dos títulos vendidos pela loja ‘Bookbeat’; 

```
SELECT title FROM titles
WHERE title_id IN (SELECT title_id FROM sales WHERE stor_id IN (SELECT stor_id FROM stores WHERE stor_name = 'Bookbeat'));
```

### *k)* Nome de autores que tenham publicações de tipos diferentes; 

```
SELECT au_fname, au_lname FROM authors
WHERE au_id IN (SELECT au_id FROM titleauthor
WHERE title_id IN (SELECT title_id FROM titles
WHERE type IN (SELECT DISTINCT type FROM titles)));
```

### *l)* Para os títulos, obter o preço médio e o número total de vendas agrupado por tipo (type) e editora (pub_id);

```
SELECT type, pub_id, AVG(price) AS avg_price, SUM(sales.qty) AS total_sales FROM titles JOIN sales ON titles.title_id = sales.title_id
GROUP BY type, pub_id;
```

### *m)* Obter o(s) tipo(s) de título(s) para o(s) qual(is) o máximo de dinheiro “à cabeça” (advance) é uma vez e meia superior à média do grupo (tipo);

```
SELECT type FROM titles
WHERE advance > 1.5 * (SELECT AVG(advance) FROM titles AS t2 WHERE t2.type = titles.type);
```

### *n)* Obter, para cada título, nome dos autores e valor arrecadado por estes com a sua venda;

```
SELECT titles.title, authors.au_fname, authors.au_lname, (sales.qty * titles.price) AS revenue
FROM ((sales JOIN titles ON sales.title_id = titles.title_id) JOIN titleauthor ON titles.title_id = titleauthor.title_id) JOIN authors ON titleauthor.au_id = authors.au_id;
```

### *o)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, a faturação total, o valor da faturação relativa aos autores e o valor da faturação relativa à editora;

```
SELECT distinct title, ytd_sales, ytd_sales*price AS facturacao, ytd_sales*price * royalty/100 as author_revenue, ytd_sales*price*(100-royalty)/100 as publisher_revenue
	FROM (titles JOIN titleauthor ON titles.title_id = titleauthor.title_id)
	order by title
```

### *p)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, o nome de cada autor, o valor da faturação de cada autor e o valor da faturação relativa à editora;

```
SELECT distinct title, ytd_sales, authors.au_fname + ' ' + authors.au_lname as authors, ytd_sales*price * royalty/100 * royaltyper /100 as author_revenue, ytd_sales*price*(100-royalty)/100 as publisher_revenue
	FROM ((titles JOIN titleauthor ON titles.title_id = titleauthor.title_id) JOIN authors ON authors.au_id = titleauthor.au_id)
	order by title
```

### *q)* Lista de lojas que venderam pelo menos um exemplar de todos os livros;

```
SELECT stor_name FROM stores
WHERE NOT EXISTS (
    SELECT title_id FROM titles
    WHERE NOT EXISTS (
        SELECT * FROM sales
        WHERE sales.title_id = titles.title_id AND sales.stor_id = stores.stor_id
    )
);
```

### *r)* Lista de lojas que venderam mais livros do que a média de todas as lojas;

```
SELECT stor_name FROM stores
WHERE (SELECT SUM(qty) FROM sales WHERE sales.stor_id = stores.stor_id) > (SELECT AVG(total_sales) FROM (SELECT SUM(qty) AS total_sales FROM sales GROUP BY stor_id) AS avg_sales);
```

### *s)* Nome dos títulos que nunca foram vendidos na loja “Bookbeat”;

```
SELECT title FROM titles
WHERE title_id NOT IN (SELECT title_id FROM sales WHERE stor_id IN (SELECT stor_id FROM stores WHERE stor_name = 'Bookbeat'));
```

### *t)* Para cada editora, a lista de todas as lojas que nunca venderam títulos dessa editora; 

```
SELECT publishers.pub_name, stores.stor_name
	FROM publishers
	CROSS JOIN stores
	WHERE NOT EXISTS (
		SELECT 1
		FROM sales
		JOIN titles ON sales.title_id = titles.title_id
		WHERE titles.pub_id = publishers.pub_id AND sales.stor_id = stores.stor_id
	)
	ORDER BY publishers.pub_name, stores.stor_name;
```

## Problema 6.2

### ​5.1

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_1_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_1_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT DISTINCT Pname, Pnumber
FROM project
JOIN works_on ON Pnumber = Pno
JOIN employee ON Essn = Ssn;
```

##### *b)* 

```
SELECT DISTINCT employee.Ssn, Fname, Minit, Lname
FROM employee
JOIN (
	SELECT Ssn
	FROM employee
	WHERE Fname = 'Carlos' AND Minit = 'D' AND Lname = 'Gomes'
) AS Carlos ON Super_ssn = Carlos.Ssn;
```

##### *c)* 

```
SELECT DISTINCT Pname, Pnumber, SUM(Hours) AS project_hours
FROM project
JOIN works_on ON Pnumber = Pno
GROUP BY Pname, Pnumber;
```

##### *d)* 

```
SELECT DISTINCT Ssn, Fname, Minit, Lname
FROM employee
JOIN works_on ON Ssn = Essn
JOIN project ON Pno = Pnumber
WHERE Dno = 3 AND Hours > 20 AND Pname = 'Aveiro Digital';
```

##### *e)* 

```
SELECT DISTINCT Fname, Minit, Lname
FROM employee
LEFT JOIN works_on ON Ssn = Essn
WHERE Pno IS NULL;
```

##### *f)* 

```
SELECT Dname, AVG(Salary) AS salario_medio
FROM (
    SELECT *
    FROM employee
    INNER JOIN department ON Dno = Dnumber
    WHERE Sex = 'F'
) AS funcionario_departamento
GROUP BY Dname;
```

##### *g)* 

```
SELECT Ssn, Fname, Minit, Lname
FROM (
    SELECT Ssn, Fname, Minit, Lname, COUNT(Dependent_name) AS num_dependents
    FROM (
        SELECT Ssn, Fname, Minit, Lname, Dependent_name
        FROM employee
        JOIN dependent ON Ssn = Essn
    ) AS funcionarios_dependentes
    GROUP BY Ssn, Fname, Minit, Lname
) AS numero_dependentes
WHERE num_dependents > 2;
```

##### *h)* 

```
SELECT DISTINCT Ssn, Fname, Minit, Lname
FROM employee
JOIN department ON Ssn = Mgr_ssn
LEFT JOIN dependent ON Ssn = Essn
WHERE Essn IS NULL;
```

##### *i)* 

```
SELECT DISTINCT e.Fname, e.Minit, e.Lname, e.Address
FROM employee AS e
JOIN works_on AS w ON e.Ssn = w.Essn
JOIN project AS p ON w.Pno = p.Pnumber
JOIN department AS d ON e.Dno = d.Dnumber
JOIN dept_location AS dl ON d.Dnumber = dl.Dnumber
WHERE dl.Dlocation != 'Aveiro' AND p.Plocation = 'Aveiro';
```

### 5.2

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_2_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_2_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT nome
FROM encomenda AS e
RIGHT JOIN fornecedor AS f ON e.fornecedor = f.nif
WHERE numero IS NULL;
```

##### *b)* 

```
SELECT produto.nome, AVG(item.unidades) AS avg_units
FROM produto
JOIN item ON produto.codigo = item.codProd
GROUP BY produto.nome;
```


##### *c)* 

```
SELECT AVG(units) AS avg_p
FROM (
    SELECT numero, COUNT(codProd) AS units
    FROM encomenda
    JOIN item ON encomenda.numero = item.numEnc
    GROUP BY numero
) AS subquery;
```


##### *d)* 

```
SELECT fornecedor.nome, produto.nome, SUM(item.unidades) AS quantidade
FROM encomenda
JOIN fornecedor ON encomenda.fornecedor = fornecedor.nif
JOIN item ON encomenda.numero = item.numEnc
JOIN produto ON item.codProd = produto.codigo
GROUP BY fornecedor.nome, produto.nome
ORDER BY fornecedor.nome, produto.nome;
```

### 5.3

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_3_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_3_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT DISTINCT p.numUtente, p.nome
FROM paciente p
LEFT JOIN prescricao pr ON p.numUtente = pr.numUtente
WHERE pr.numPresc IS NULL;
```

##### *b)* 

```
SELECT especialidade, COUNT(especialidade) AS numero_prescricoes
FROM medico m
JOIN prescricao p ON m.numSNS = p.numMedico
GROUP BY especialidade;
```


##### *c)* 

```
SELECT nome, SUM(numPresc) AS prescricoes_processadas
FROM farmacia f
JOIN prescricao p ON f.nome = p.farmacia
GROUP BY nome;
```


##### *d)* 

```
SELECT DISTINCT f.nome
FROM farmaco AS f
LEFT JOIN presc_farmaco AS p_f ON f.nome = p_f.nomeFarmaco AND p_f.numRegFarm = 906
WHERE p_f.nomeFarmaco IS NULL AND f.numRegFarm = 906;
```

##### *e)* 

```
SELECT DISTINCT farmacia, nome, COUNT(nomeFarmaco) AS farmaco_vendido_farmacia
FROM prescricao AS p
JOIN presc_farmaco AS p_f ON p_f.numPresc = p.numPresc
JOIN farmaceutica AS f ON f.numReg = p_f.numRegFarm
WHERE p.dataProc IS NOT NULL
GROUP BY farmacia, nome
ORDER BY farmacia;
```

##### *f)* 

```
SELECT DISTINCT p.nome
FROM paciente AS p
INNER JOIN (
    SELECT numUtente, numMedico, COUNT(*) AS docs
    FROM prescricao
    GROUP BY numUtente, numMedico
    HAVING COUNT(*) > 1
) AS docs ON p.numUtente = docs.numUtente;
```
