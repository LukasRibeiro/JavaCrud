create database mercado;

create table produto(
	codigo_produto int(11) primary key auto_increment,
	descricao_produto varchar(100),
	preco_produto double(15,2));
	