# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
all_projects = π Pname, Pnumber (project) ⨝ Pno = Pnumber (works_on)
all_employees = π Fname, Lname, Ssn (employee)

all_projects ⨝ Ssn = Essn all_employees
```


### *b)* 

```
π Fname, Minit, Lname (π Ssn (σ Fname = 'Carlos' and Minit = 'D' and Lname = 'Gomes' (employee)) ⨝ Ssn = Super_ssn π Fname, Minit, Lname, Super_ssn (employee))
```


### *c)* 

```
projects = π Pname,Pnumber (project)
works = π Essn,Pno,Hours (works_on)

γ Pname; THours←SUM(Hours) (projects ⨝ Pnumber = Pno works)
```


### *d)* 

```
projetos = π Pname, Pnumber, Dnum (project)
projetos_hours = projetos ⨝ Pno = Pnumber (works_on)
funcionarios = π Fname,Minit,Lname,Ssn,Dno (employee)
dep_funcionarios = funcionarios ⨝ Dnumber = Dno (department)

π Fname,Minit,Lname (dep_funcionarios ⨝ Dnumber = 3 and Pname = 'Aveiro Digital' and Hours > 20 (projetos_hours))
```


### *e)* 

```
funcionarios = π Fname,Minit,Lname,Ssn (employee)
tabela_funcionarios_works = funcionarios ⟕ Ssn = Essn (works_on)
no_work = σ Essn = null (tabela_funcionarios_works)
π Fname, Minit, Lname (no_work)
```


### *f)* 

```
female = (π Fname, Minit, Lname, Dno, Salary (σ Sex = 'F' (employee)))

γ Fname; Salary←avg(Salary) female
```


### *g)* 

```
all_employees = π Fname, Minit, Lname, Ssn (employee)

all_employees_dependentes = all_employees ⨝ Ssn = Essn (dependent)
dep_numb = γ Fname; count(Dependent_name) -> dep_numb (all_employees_dependentes) σ dep_numb > 2 (dep_numb)
```


### *h)* 

```
all_employees = π Fname, Minit, Lname, Ssn (employee)

all_employees_gestores = all_employees ⨝ Ssn = Mgr_ssn (department)
tabela_employees_dependent = all_employees_gestores ⟕ Ssn = Essn (dependent)
no_dependent = σ Essn = null (tabela_employees_dependent) π Fname, Minit, Lname (no_dependent)
```


### *i)* 

```
projeto_aveiro = σ Plocation = 'Aveiro' (project) 

dept_not_aveiro = σ Dlocation ≠ 'Aveiro' (dept_location) ⨝ dept_location.Dnumber = department.Dnumber (department)

proj_Aveiro_dept_not_Aveiro = projeto_aveiro ⨝ Dnum = department.Dnumber (dept_not_aveiro)

proj_Aveiro_dept_not_Aveiro_employee = (proj_Aveiro_dept_not_Aveiro ⨝ Pnumber = Pno (works_on)) ⨝ Essn = Ssn (employee)

π Fname, Minit, Lname, Address (proj_Aveiro_dept_not_Aveiro_employee)
```


## ​Problema 5.2

### *a)*

```
σ (fornecedor = null) (fornecedor ⟕ nif = fornecedor encomenda)
```

### *b)* 

```
γ; avg(numero) -> media (γ numero; COUNT(codProd) -> unidades (encomenda⨝numero=numEnc item))
```


### *c)* 

```
γ; avg(numero) -> media (γ numero; COUNT(codProd) -> unidades (encomenda⨝numero=numEnc item))
```


### *d)* 

```
table = γ codProd, fornecedor; sum(unidades) -> quant_total (item ⨝ numEnc = numero encomenda)

π fornecedor.nome, produto.nome, quant_total (table ⨝ fornecedor = nif fornecedor ⨝ codProd = codigo produto)
```


## ​Problema 5.3

### *a)*

```
π nome, paciente.numUtente (paciente) - π nome, paciente.numUtente (paciente ⨝ paciente.numUtente = prescricao.numUtente prescricao)
```

### *b)* 

```
γ especialidade; total_presc←count(numPresc) (prescricao ⨝ numMedico = numSNS medico)
```


### *c)* 

```
γ nome; total_presc←count(numPresc) (prescricao ⨝ farmacia = nome farmacia)
```


### *d)* 

```
Farmaco906 = π farmaco.nome (σ numRegFarm = 906 (farmaco ⨝ numRegFarm = numReg farmaceutica))
prescritos906 = π nomeFarmaco (σ numRegFarm  = 906 presc_farmaco)
Farmaco906 - prescritos906
```

### *e)* 

```
γ farmacia, farmaceutica.nome;  vendeu←COUNT(numPresc) (farmaceutica⨝numReg=numRegFarm (presc_farmaco⨝(σ farmacia != null prescricao)))
```

### *f)* 

```
Utentes_difsmedics = σ dif_medcs > 1 (γ numUtente; dif_medcs←count(numMedico) (π numUtente, numMedico prescricao))

π nome (paciente ⨝ paciente.numUtente = prescricao.numUtente Utentes_difsmedics)
```
