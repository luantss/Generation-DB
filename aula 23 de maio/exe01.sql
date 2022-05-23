use db_exe01;

Create table colaboradores(
	id bigint auto_increment,
    nome varchar(20) not null,
    idade bigint not null,
    salario decimal(10,2),
    email varchar(40) not null,
    primary key (id)
);

insert into colaboradores(nome, idade, salario, email) Values	
	("Laura", 21, 2400.00, "laurinha@gmail.com");
insert into colaboradores(nome, idade, salario, email) Values	
	("Manuel", 19, 1900.00, "manueldelas@hotmail.com");
insert into colaboradores(nome, idade, salario, email) Values	
	("Luciana", 27, 3000.00, "luciana21@gmail.com");
insert into colaboradores(nome, idade, salario, email) Values	
	("Carlos", 38, 3200.00, "carlosaugusto@hotmail.com");
insert into colaboradores(nome, idade, salario, email) Values	
	("Luana", 25, 1845.00, "luanalinda@gmail.com");    
    
    select * from colaboradores where salario > 2000.00;
    select * from colaboradores where salario < 2000.00;
    update colaboradores set salario = 2005.00 where id = 5;
    
    select * from colaboradores
