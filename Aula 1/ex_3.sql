use db_alunos;

create table tb_alunos(
id bigint (8) auto_increment,
codigoDeMatricula bigint (8) not null,
nome varchar (30),
turma varchar (2),
nota bigint (2.1),
primary key (id)
);

insert into tb_alunos(codigoDeMatricula, nome, turma, nota)
	values(31898912, "Thais", "9B",10);
insert into tb_alunos(codigoDeMatricula, nome, turma, nota)
	values(31898913, "Lucas", "9B",9);
insert into tb_alunos(codigoDeMatricula, nome, turma, nota)
	values(31898914, "Rodrigo", "9B",8);
insert into tb_alunos(codigoDeMatricula, nome, turma, nota)
	values(31898915, "Iris", "9B",7);
insert into tb_alunos(codigoDeMatricula, nome, turma, nota)
	values(31898916, "Caio", "9B",6);
insert into tb_alunos(codigoDeMatricula, nome, turma, nota)
	values(31898917, "Jessica", "9B",5);
    


select nota from tb_alunos where nota>7;
select nota from tb_anunos where nota<7;

update tb_alunos set nota=8 where codigoDeMatricula=31898916;
