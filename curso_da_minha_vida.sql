create database db_curso_da_minha_vidal;
use db_curso_da_minha_vidal;

create table tb_categorias(
id_categorias int auto_increment,
curso varchar(40),
campus varchar(15),
primary key(id_categorias)
);

insert into tb_categorias(curso, campus)
values("Tecnologia", "asa sul");
insert into tb_categorias(curso, campus)
values("Exatas", "centro");
insert into tb_categorias(curso, campus)
values("Humanas", "asa norte");
insert into tb_categorias(curso, campus)
values("Sociais", "linha amarela");
insert into tb_categorias(curso, campus)
values("Analiticas", "linha verde");

select *from tb_categorias;

create table tb_cursos(
id_cursos int auto_increment,
curso varchar(30),
modalidade varchar(20),
turno varchar(15),
periodo int,
categoria_id int,
primary key(id_cursos),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("Analise de sistemas", "presencial", "noite", 5, 1);
insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("Engenharia de software", "presencial", "integral", 2, 1);
insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("Matematica", "ead", "manha", 3, 2);
insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("Letras e linguas estrangeiras", "semi presencial", "noite", 4, 3);
insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("Psicologia", "presencial", "integral", 1, 4);
insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("fisica", "presencial", "integral", 2, 2);
insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("Psicanalise", "semi presencial", "manha", 2, 4);
insert into tb_cursos(curso, modalidade, turno, periodo, categoria_id)
values("Social", "presencial", "noite", 2, 4);

select *from tb_cursos;
select * from tb_cursos where periodo > 2;
select * from tb_cursos where periodo > 1 and periodo < 4;
select * from tb_cursos where curso like '%t%';

select * from tb_cursos inner join tb_categorias 
on tb_cursos.categoria_id = tb_categorias.id_categorias; 

select * from tb_cursos inner join tb_categorias 
on tb_cursos.categoria_id = tb_categorias.id_categorias 
where id_categorias = 1;




