create database db_pizzaria_legal1;

use db_pizzaria_legal1;

create table tb_categorias(
id_categorias int auto_increment,
sabores varchar(40),
preparo varchar(45),
primary key (id_categorias)
);

insert into tb_categorias( sabores, preparo)
values("Duplex", "Rapido");
insert into tb_categorias( sabores, preparo)
values("Canadense", "Forna a lenha");
insert into tb_categorias( sabores, preparo)
values("La Belle", "Rapido + suggo especial");
insert into tb_categorias( sabores, preparo)
values("Retrô", "Forna a lenha ducci");
insert into tb_categorias( sabores, preparo)
values("Doce", "Minha escolha");

select *from tb_categorias;

create table tb_pizzas(
id_pizzas int auto_increment,
sabor varchar(30),
categoria varchar(20),
valor decimal(6,2),
borda varchar(15),
tipo_adicional varchar(40),
categoria_id int,
primary key(id_pizzas),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Italianinha", "Familia", 89.90, "catupiry", "bacon duplo", 5);
insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Matuta", "Sozinho", 42.00, "Fitness", "Rucula + Repolho roxo", 1);
insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Cream Peru", "Pizza", 51.80, "sem borda", "Sem adicional", 3);
insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Especial", "Grande", 95.00, "Vulcão Cheddar", "Ovo", 4);
insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Vegetal Great", "Broto", 39.90, "Chantily", "Kiui", 2);
insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Escarola", "Sozinha", 45.90, "4 queijos", "Sem adicional", 1);
insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Napolitana", "Familia", 99.50, "Sem bordas", "Bacon + milho + azeitona", 5);
insert into tb_pizzas(sabor, categoria, valor, borda, tipo_adicional, categoria_id)
values("Japonesa", "Familia", 90.90, "Toffu", "sem adicional", 4);

select *from tb_pizzas;

select *from tb_pizzas where valor > 45;
select *from tb_pizzas where valor >= 50 and valor <= 100;

select *from tb_pizzas where sabor like "%m%";
select *from tb_pizzas where sabor like "%p%";

select * from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id_categorias;

select *from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id_categorias
where tb_categorias.sabores = "Doce";







