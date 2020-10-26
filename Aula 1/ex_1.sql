use db_rh;
 
insert into tb_funcionarios (nome, cargo, salario, setor)
	values ("João", "Desenvolvedor Jr", 3000,"Engenharia");
insert into tb_funcionarios (nome, cargo, salario, setor)
	values ("Maria", "Desenvolvedora Pl", 4000,"Engenharia");
insert into tb_funcionarios (nome, cargo, salario, setor)
	values ("José", "Desenvolvedor Sr", 5000,"Engenharia");
insert into tb_funcionarios (nome, cargo, salario, setor)
	values ("Francisca", "Coordenadora", 6000,"Engenharia");
insert into tb_funcionarios (nome, cargo, salario, setor)
	values ("Paula", "Gerente", 7000,"Engenharia");
    
select nome, salario from tb_funcionarios where salario >2000.0;
select nome, salario from tb_funcionarios where salario <2000.0;

update tb_funcionarios set salario = 7500 where id=5;
