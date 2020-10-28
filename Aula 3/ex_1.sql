create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id int auto_increment,
tipo varchar (255) not null,
origem varchar (30),
embalada boolean,

primary key (id)
);

insert into tb_categorias(tipo, origem, embalada)
	values("Bovina", "Argentina", true);
insert into tb_categorias(tipo, origem, embalada)
	values("Suína", "Brasil", true);
insert into tb_categorias(tipo, origem, embalada)
	values("Bovina", "Argentina", true);
insert into tb_categorias(tipo, origem, embalada)
	values("Bovina", "Argentina", true);
    
select *from tb_categorias;

update tb_categorias set tipo = "Aves" where id=3;

select *from tb_categorias;
update tb_categorias set origem="Brasil" where id=3;
update tb_categorias set origem="Diversos" where id = 4;
update tb_categorias set tipo ="Outros" where id=4;

select *from tb_categorias;

create table tb_produtos(
id int (5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id int,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos (nome, preco, qtProduto, categoria_id)
	values("Picanha",20.00,30,1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id)
	values("Alcatra",15.00,10,1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id)
	values("Peito de Frango",13.00,50,3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id)
	values("Picanha Suína",25.00,30,2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id)
	values("Carne de Rã",50.00,10,4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id)
	values("Maminha",20.00,30,1);
    
select *from tb_produtos;
delete from tb_produtos where id=1;

select tb_produtos.nome, tb_produtos.preco, tb_categorias.origem from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;


