create database rh;
use rh;

create table colaboradores (
id int auto_increment,
nome varchar(150) not null,
salario decimal(8,2) not null,
cargo varchar(50) not null,
setor varchar(30),
primary key(id)
);

select * from colaboradores;

insert into colaboradores( nome, salario, cargo, setor)
value('Elizabete', 1234.56,'analista', 'TI');

Insert into colaboradores (nome, salario, cargo, setor) 
	value ('Jonm', 22134.56,'Gestor', 'TI') ;

Insert into colaboradores (nome, salario, cargo, setor) 
value ('Marie', 1234.56,'analista Jr', 'TI') ;

Insert into colaboradores (nome, salario, cargo, setor) 
	value ('Samara', 21234.56,'analista Sr', 'TI') ;

Select *from colaboradores where salario > 2000;

Select nome, salario from colaboradores where salario < 2000;

Update colaboradores set salario = 3000 where id = 5;