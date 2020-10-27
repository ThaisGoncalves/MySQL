create database db_ecommerce

use db_ecommerce;

create table tb_categoria(
id bigint(8) auto_increment,
supermercado varchar (30),
farmacia varchar (30),
roupas varchar (30),
primary key (id)
);

use db_ecommerce;
create table tb_produtos(
id bigint (30) auto_increment,
nome varchar (30) not null,
preco decimal (5,2),
loja varchar (30),
distribuidora varchar (30),
nome_id bigint (30),
primary key (id),
foreign key (nome_id) references tb_categoria (id)
);

use db_ecommerce;

insert into tb_categoria (supermercado, farmacia, roupas)
	values ("alimentos", "remédios", "roupas");
insert into tb_categoria (supermercado, farmacia, roupas)
	values ("higiene", "higiene pessoal", "calçados");
insert into tb_categoria (supermercado, farmacia, roupas)
	values ("pets", "instrumentos", "roupa de cama");

use db_ecommerce;

insert into tb_produtos (nome, preco, loja, distribuidora, nome_id)
	values ("Arroz",13.90,"Carrefour","Distribuidora 1",1);
insert into tb_produtos (nome, preco, loja, distribuidora, nome_id)
	values ("Ração",180.90,"Carrefour","Distribuidora 1",4);

