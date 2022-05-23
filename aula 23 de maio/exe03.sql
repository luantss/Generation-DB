create database db_exe03;
use db_exe03;

create table estudantes (
	id bigint auto_increment,
    nome varchar(20) not null,
    turma bigint(10) not null,
    nota decimal(10.1),
    faltas bigint,
    primary key (id)
);

insert into estudantes(nome, turma, nota, faltas) values
	("Rute", 4, 9.0, 2);
insert into estudantes(nome, turma, nota, faltas) values
	("Andre", 6, 7.0, 4);
insert into estudantes(nome, turma, nota, faltas) values
	("Monica", 4, 10.0, 1);
insert into estudantes(nome, turma, nota, faltas) values
	("Gabriel", 5, 4.0, 6);
insert into estudantes(nome, turma, nota, faltas) values
	("Carla", 6, 5.0, 3);
insert into estudantes(nome, turma, nota, faltas) values
	("Igor", 3, 8.0, 2);
insert into estudantes(nome, turma, nota, faltas) values
	("Felipe", 3, 5.0, 4);
insert into estudantes(nome, turma, nota, faltas) values
	("Alana", 4, 6.0, 3);
    
select * from estudantes where nota > 7;
select * from estudantes where nota < 7;
update estudantes set nota = 6.0 where id = 8;
select * from estudantes;