create database db_rh2;

use db_rh2;
create table tb_cargos(
	id bigint auto_increment,
    codigo_cargo bigint (5) not null,
    nome_cargo varchar(30),
	salario decimal (10,2),
	
    primary key (id)
    );
    
use db_rh2;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar (30) not null,
setor varchar (30),
ativo boolean,
cargo_id bigint not null,

primary key (id) ,
foreign key (cargo_id) references tb_cargos(id)
);


insert into tb_cargos (codigo_cargo, nome_cargo, salario)
	values (601, "Desenvolvedor Jr", 1000);
insert into tb_cargos (codigo_cargo, nome_cargo, salario)
	values (602, "Desenvolvedor Pl", 2000);
insert into tb_cargos (codigo_cargo, nome_cargo, salario)
	values (603, "Desenvolvedor Sr", 3000);
insert into tb_cargos (codigo_cargo, nome_cargo, salario)
	values (604, "Coordenador", 4000);
insert into tb_cargos (codigo_cargo, nome_cargo, salario)
	values (605, "Gerente", 5000);
insert into tb_cargos (codigo_cargo, nome_cargo, salario)
	values (606, "Diretor", 6000);
    
    
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Maria Santos", "Engenharia de Software", true, 2);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Maria Souza", "Engenharia de Software", true, 2);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Ana Silva", "Engenharia de Software", true, 1);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Ana Souza", "Engenharia de Software", true, 1);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Ana Santos", "Engenharia de Software", true, 1);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Jessica Silva", "Engenharia de Software", true, 3);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Jessica Santos", "Engenharia de Software", true, 3);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Jessica Souza", "Engenharia de Software", true, 3);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Carla Silva", "Engenharia de Software", true, 4);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Paula Silva", "Engenharia de Software", true, 5);
insert into tb_funcionarios (nome, setor, ativo, cargo_id)
	values ("Tereza Silva", "Engenharia de Software", true, 6);


select nome_cargo, salario from tb_cargos where salario >=1000 and salario <=2000;

select * from tb_funcionarios where nome like "%c%";

