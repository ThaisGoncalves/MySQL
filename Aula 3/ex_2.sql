create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;
create table tb_categoria(
id int auto_increment,
tipo varchar (255),
distribuidora varchar (255),
filial varchar (255),
primary key (id)
);

insert into tb_categoria (tipo, distribuidora, filial)
	values("Construção", "Distribuidora 1", "Osasco");
insert into tb_categoria (tipo, distribuidora, filial)
	values("Decoração", "Distribuidora 2", "Carapicuíba");
insert into tb_categoria (tipo, distribuidora, filial)
	values("Mobília", "Distribuidora 3", "Itapevi");
insert into tb_categoria (tipo, distribuidora, filial)
	values("Reforma", "Distribuidora 3", "Barueri");
    
use db_construindo_a_nossa_vida;
create table tb_produtos(
id int auto_increment,
nome varchar (255),
preco decimal,
qtProduto varchar (255),
nome_id int,
primary key (id),
foreign key (nome_id) references tb_categoria(id)
);

select *from tb_produtos;

insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Cimento", 19.90, 800, 1);
insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Cortina", 89.90, 80, 2);
insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Sofá", 500.00, 2, 3);
insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Tinta", 79.90, 800, 4);
insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Areia", 19.90, 800, 1);
insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Pedra", 19.90, 800, 1);
insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Pincel", 19.90, 1800, 4);
insert into tb_produtos(nome, preco, qtProduto, nome_id)
	values("Mesa", 880.90, 800, 3);
    
select tb_produtos.nome, tb_produtos.preco, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.nome_id