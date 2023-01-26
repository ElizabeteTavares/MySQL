create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id_categorias int auto_increment,
animal varchar(30),
idade int,
criacao varchar(20),
primary key (id_categorias)
);

insert into tb_categorias(animal, idade, criacao)
values ("Boi", 2, "Pasto");
insert into tb_categorias(animal, idade, criacao)
values ("Frango", 1, "Granja");
insert into tb_categorias(animal, idade, criacao)
values ("Porco", 3, "Granja");
insert into tb_categorias(animal, idade, criacao)
values ("Ganso", 1, "Galinheiro");
insert into tb_categorias(animal, idade, criacao)
values ("Galinha", 2, "Quintal");

create table tb_produtos(
id_produtos int auto_increment,
corte varchar(30),
peso varchar(15),
preco decimal(6,2),
embalagem varchar(30),
validade date,
categoria_id int,
primary key(id_produtos),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("File Mignion", "2 quilos", 49.80, "vacuo", "2022/02/10", 1);
insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("Costelinha", "3 quilos", 25.00, "isopor", "2022/03/01", 2);
insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("Lombo", "4 quilos", 49.80, "vacuo", "2022/02/10", 3);
insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("file de frango", "1 quilo", 49.80, "vacuo", "2022/01/30", 4);
insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("Toucinho", "3 quilos e meio", 49.80, "reciclavel", "2022/04/10", 5);
insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("Pichanha", "4 quilos", 49.80, "vacuo", "2022/03/05", 1);
insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("Coxa de frango", "2 quilos", 49.80, "sacola de plastico", "2022/02/15", 4);
insert into tb_produtos(corte, peso, preco, embalagem, validade, categoria_id)
values("Lombo", "4 quilos", 49.80, "isopor", "2022/02/25", 2);


select *from tb_produtos;

update tb_produtos set preco = 25.90 where id_produtos = 3;
update tb_produtos set preco = 16.80 where id_produtos = 4;
update tb_produtos set preco = 10.50 where id_produtos = 5;
update tb_produtos set preco = 69.80 where id_produtos = 6;
update tb_produtos set preco = 12.90 where id_produtos = 7;
update tb_produtos set preco = 24.90 where id_produtos = 8;

select *from tb_produtos where preco > 50;

select *from tb_produtos where preco >= 50 and preco <= 150;

select *from tb_produtos where corte like "%c%";

select *from tb_produtos as produtos inner join tb_categorias as categorias
on produtos.categoria_id = categorias.id_categorias;

select * from tb_produtos as produtos inner join tb_categorias as categorias 
on produtos.categoria_id = categorias.id_categorias where id_categorias = 4;


