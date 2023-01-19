create database exercicio3;

use exercicio3;

create table estudantes(
id int auto_increment,
nome varchar(150) not null,
nota float(3,2) not null,
serie varchar(20) not null, 
materia varchar(20) not null,
primary key(id)
);

select * from estudantes;

insert into estudantes(nome, nota, serie, materia) value("Tamires", 3.7, "5° medio", "historia");
insert into estudantes(nome, nota, serie, materia) value("Jonas", 9.5, "5° medio", "matemática");
insert into estudantes(nome, nota, serie, materia) value("Jocabed",9.8, "5° medio", "portugês");
insert into estudantes(nome, nota, serie, materia) value("Nataniel", 7.8, "5° medio", "ciências");
insert into estudantes(nome, nota, serie, materia) value("Raimundo", 8.3, "5° medio", "geografia");
insert into estudantes(nome, nota, serie, materia) value("Ruan", 5.5, "5° medio", "física");
insert into estudantes(nome, nota, serie, materia) value("Raiça", 7.5, "5° medio", "química");
insert into estudantes(nome, nota, serie, materia) value("Ruahs", 6.8, "5° medio", "artes");

select * from estudantes where nota > 7;
select * from estudantes where nota < 7;

update estudantes set materia = "física" where nota = 7;
