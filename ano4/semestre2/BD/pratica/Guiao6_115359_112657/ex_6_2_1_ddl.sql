use Empresa;

Create table Employee (
	fname varchar(15),
	Minit varchar(1),
	Lname varchar(15),
	Ssn int primary key check (Ssn > 0),
	Bdate date,
	Address_e varchar(30),
	Sex varchar(1) check (Sex = 'F' or Sex = 'M'),
	Salary decimal(10,2),
	Super_ssn int null check (Super_ssn > 0),
	Dno int,
	foreign key (Super_ssn) references Employee(Ssn),
)

Create table Department (
	Dname varchar(30),
	Dnumber int primary key,
	Mgr_ssn int null check (Mgr_ssn > 0),
	Mgr_start_date date,
	foreign key (Mgr_ssn) references Employee(Ssn)
)

Create table Dept_locations (
	Dnumber int,
	Dlocation varchar(30),
	primary key (Dnumber, Dlocation),
	foreign key (Dnumber) references Department(Dnumber)
)

Create table Project (
	Pname varchar(15),
	Pnumber int primary key,
	Plocation varchar(30),
	Dnum int,
	foreign key (Dnum) references Department(Dnumber)
)

Create table Works_on (
	Essn int check (Essn > 0),
	Pno int,
	primary key (Essn, Pno),
	Hours Decimal(5,2),
	foreign key (Essn) references Employee(Ssn),
	foreign key (Pno) references Project(Pnumber)
)

Create table Dependents (
	Essn int check (Essn > 0),
	Dependent_name varchar(15),
	Sex varchar(1) check (Sex = 'F' or Sex = 'M'),
	Bdate date,
	Relationship varchar(15),
	primary key (Essn, Dependent_name),
	foreign key (Essn) references Employee(Ssn)
)
