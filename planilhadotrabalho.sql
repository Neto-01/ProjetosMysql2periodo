create table clientes(
	id integer not null AUTO_INCREMENT,
    nome varchar(60),
    telefone varchar(11),
    cpf varchar(14),
    email varchar(60),
    endereco varchar(100),
    primary key(id)
);

create table filmes(
	id integer not null auto_increment,
    titulo varchar(50),
    genero varchar(50),
    ano integer(6),
    diretor varchar(100),
    duracao time(200),
    primary key(id)
    
);

create table alugueis(
	id integer not null auto_increment, 
    id_filme integer, 
    id_cliente integer,
    id_funcionario varchar(100),
    data_aluguel varchar(100),
    data_devolucao_efetiva date,
    data_devolucao date,
    valor_aluguel decimal(6, 2),
    primary key (id),
    foreign key (id_filme) reference filmes(id),
    foreign key (id_cliente) reference clientes(id),
    foreign key (id_funcionario) reference funcionarios(id)
);

create table funcionarios(
	id int not null auto_increment,
    nome varchar(100),
    telefone varchar(11),
    cargo varchar(50),
    email varchar (60),
    primary key(id)

);

create table filme_categoria(
	id_categoria_filme varchar(100),
    primary key(id_categoria)

);

create table categorias(
	id_categorias integer,
    descricao varchar(100)
);