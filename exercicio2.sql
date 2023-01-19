create database exercicio2;

use exercicio2;

create table produtos (
id int not null auto_increment,
nome varchar(18) not null,
valor decimal(4,2) not null,
especificacao varchar(40) not null,
setor varchar(20) not null,
primary key(id)
);
alter table produtos modify valor decimal (8,2);

select *from produtos;

insert into produtos (nome, valor, especificacao, setor) 
value ("calça", 450.90, "preta", "vestuario");

insert into produtos (nome, valor, especificacao, setor) 
value ("blusa", 24.90, "branca", "vestuario");

insert into produtos (nome, valor, especificacao, setor) 
value ("conjunto lingirie", 249.99, "azul marinho", "peças intimas");

insert into produtos (nome, valor, especificacao, setor) 
value ("bota", 1259.79, "animal print", "calçado");

insert into produtos (nome, valor, especificacao, setor) 
value ("corselet", 869.90, "branco", "lingirie");

insert into produtos (nome, valor, especificacao, setor) 
value ("bone", 249.90, "preta de tela", "esportivo");

insert into produtos (nome, valor, especificacao, setor) 
value ("blazer", 865.90, "off white", "vestuario");

insert into produtos (nome, valor, especificacao, setor) 
value ("leggin", 39.90, "rose", "vestuario");

select * from produtos where valor > 500.00;

select * from produtos where valor < 500.00;

delete from produtos where id = 1;
delete from produtos where id = 2;

update produtos set valor = 390.90 where id = 10;