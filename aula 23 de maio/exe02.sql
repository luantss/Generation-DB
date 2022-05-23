create database db_exe02;
use db_exe02;

create table produtos (
	id bigint auto_increment,
    nome varchar(30) not null,
    valor decimal(10,2),
    peso decimal(5,3),
    tipo varchar(30),
    primary key(id)
);
insert into produtos(nome, valor, peso, tipo) Values 
	("laranja", 5.00, 1.264,"fruta");
insert into produtos(nome, valor, peso, tipo) Values 
	("camisa", 34.00, 0.200,"roupa");
insert into produtos(nome, valor, peso, tipo) Values 
	("carro", 7500.00, 2.000,"veiculo");
insert into produtos(nome, valor, peso, tipo) Values 
	("uva", 9.00, 0.800,"fruta");
insert into produtos(nome, valor, peso, tipo) Values 
	("detergente", 3.00, 0.500,"limpeza");
insert into produtos(nome, valor, peso, tipo) Values 
	("garrafa", 15.00, 0.400,"recipiente");
insert into produtos(nome, valor, peso, tipo) Values 
	("cadeira", 500.00, 10.000,"movel");
insert into produtos(nome, valor, peso, tipo) Values 
	("furadeira", 235.99, 2.500,"ferramenta");
    
select * from produtos where valor > 500;
select * from produtos where valor < 500;
update produtos set peso = 15.000 where id = 3;
select * from produtos;