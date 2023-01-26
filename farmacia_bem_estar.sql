create database db_farmacia_bem_estarI;

use db_farmacia_bem_estarI;

create table tb_categorias(
id_categorias int auto_increment,
produtos varchar(40),
fabricante varchar(35),
primary key(id_categorias)
);

insert into tb_categorias(produtos, fabricante)
values("Antiinflamotorio", "Medley");
insert into tb_categorias(produtos, fabricante)
values("contraceptivos", "Fabbir");
insert into tb_categorias(produtos, fabricante)
values("Hipertensão", "Medley");
insert into tb_categorias(produtos, fabricante)
values("Higiene Pessoal", "Johnson");
insert into tb_categorias(produtos, fabricante)
values("Alimento", "Matte");

select*from tb_categorias;

create table tb_produtos(
id_produtos int auto_increment,
nome_produto varchar(40),
preco decimal(6,2),
validade date,
especie varchar(50),
embalagem varchar(40),
categoria_id int,
primary key(id_produtos),
foreign key (categoria_id) references tb_categorias(id_categorias)
);

insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Benzatil", 36.89, "2024/02/29", "Ampola", "Descartavel", 1);
insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Dipirona", 16.45, "2023/12/29", "Comprimido", "Plastico", 3);
insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Protetor Solar", 89.50, "2026/02/15", "Pote", "Papel reciclavel", 4);
insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Sabonete", 08.40, "2024/01/10", "Unidade", "Papel", 4);
insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Fio dental", 13.40, "2023/01/02", "Pote", "Plastico", 4);
insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Mirena", 1044.80, "2030/11/05", "Embolo hormonal", "Descartavel", 2);
insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Chá Matte", 04.80, "2024/10/29", "Sache", "Caixa", 5);
insert into tb_produtos(nome_produto, preco, validade, especie, embalagem, categoria_id)
values("Losartana",2.80, "2025/07/15", "Comprimidos", "Plastico", 3);

select *from tb_produtos;

select *from tb_produtos where preco >50;
select *from tb_produtos where preco >=50 and preco <= 60;

select *from tb_produtos where nome_produto like "%c%";

select *from tb_produtos as p inner join tb_categorias as c
on p.categoria_id = c.id_categorias; 

select * from tb_produtos as p inner join tb_categorias as c 
on p.categoria_id = c.id_categorias 
where id_categorias = 4;





