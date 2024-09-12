create table livros(
	id int not null AUTO_INCREMENT,
    titulo varchar(60),
    autor varchar(60),
    editora varchar(60),
    ano_publicado int(4),
	preco decimal(6, 2),
    primary key(id)
);

select * from livros;
select * from clientes;
select * from pedidos;


create table clientes(
	id int not null AUTO_INCREMENT,
    nome varchar(60),
    email varchar(60),
    endereco varchar(60),
    primary key(id)
);

create table pedidos(
	id int not null AUTO_INCREMENT,
    id_cliente,
    data_pedido data,
    total decimal(6),
    primary key(id),
    FOREIGN KEY(id_cliente) REFERENCES(id)

);