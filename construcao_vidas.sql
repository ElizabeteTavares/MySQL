create database db_construindo_vidasl;
use db_construindo_vidas;

create table tb_categorias(
id_categorias int auto_increment,
material varchar (40),
quantidade varchar (50),
primary key(id_categorias)
);

insert into tb_categorias(material, quantidade)
values("Construção", 200);
insert into tb_categorias(material, quantidade)
values("Pintura", 300);
insert into tb_categorias(material, quantidade)
values("Acabamento pisos", 500);
insert into tb_categorias(material, quantidade)
values("Ferramentas", 1000);
insert into tb_categorias(material, quantidade)
values("Banheiro", 200);

select *from tb_categorias;

create table tb_produtos(
id_produtos int auto_increment,
nome varchar(20),
valor decimal(6,2),
quantidade varchar(20),
promocao boolean,
qualidade int,
categoria_id int,
primary key(id_produtos),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Cimento", 78.00, 2, false, 1, 1);
insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Porcelanato", 125.70, "70 metros", true, 2,3);
insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Tinta gelo", 152.50, 4, false, 1, 2);
insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Martelo", 150, 4, true, 4,4);
insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Areia", 129.90, "1 metro", false, 5, 1);
insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Loucas de banheiro", 340.60, 1, true, 1, 5);
insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Colher de pedreiro", 101.50, 5, false, 1, 4);
insert into tb_produtos(nome, valor, quantidade, promocao, qualidade, categoria_id)
values("Espelho", 95.80, 1, false, 1, 5);

select *from tb_produtos;

select *from tb_produtos where valor > 100;
select *from tb_produtos where valor >=70 and valor <= 150;
select *from tb_produtos where nome like "%c%";

select *from tb_produtos as produtos inner join tb_categorias as categorias
on produtos.categoria_id = categorias.id_categorias;

select *from tb_produtos as produtos inner join tb_categorias as categorias
on produtos.categoria_id = categorias.id_categorias
where material = "banheiro";












