use controle_estoque;

create table categoria (
	categoria_id int primary key auto_increment,
    nome varchar(100) not null
);

create table usuario (
	usuario_id int primary key auto_increment,
    nome varchar(100) not null,
    cargo varchar(100) not null,
    login varchar(50) unique not null,
    senha varchar(50) not null
);

create table fornecedor (
	fornecedor_id int primary key auto_increment,
    nome varchar(100) not null,
    cnpj varchar(18) unique not null,
    telefone varchar(15) default null,
    email varchar(150) default null,
    endereco varchar (200) default null
);

create table produto (
	produto_id int primary key auto_increment,
    categoria_id int not null,
    nome varchar(50) not null,
    lote_produto varchar(50) default null,
    unidade_medida varchar(5) not null check (unidade_medida in ('cx', 'un', 'pct')),
    estoque_minimo int default 0,
    estoque_atual int default 0,
    preco decimal(10, 2) not null check (preco > 0),
    foreign key (categoria_id) references categoria(categoria_id)
);

create table pedido (
	pedido_id int primary key auto_increment,
    fornecedor_id int not null,
    data_emissao date default now(),
    data_entregue date,
    status_pedido varchar(10) not null default 'Pendente' check (status_pedido in ('Pendente', 'Aprovado', 'Cancelado')),
    foreign key (fornecedor_id) references fornecedor(fornecedor_id)
);

create table item_pedido (
    item_id int primary key auto_increment,
    pedido_id int not null,
    produto_id int not null,
    quantidade int not null check (quantidade > 0),
    item_preco int not null check (item_preco > 0),
    foreign key (pedido_id) references pedido(pedido_id),
    foreign key (produto_id) references produto(produto_id)
);

create table movimentacao (
    movimentacao_id int primary key auto_increment,
    produto_id int not null,
    usuario_id int not null,
    item_id int default null,
    data_movimentacao date default now(),
    tipo varchar(10) not null check (tipo in ('Entrada', 'Saida')),
    motivo varchar(200) default null,
    quantidade int not null check (quantidade > 0),
    foreign key (produto_id) references produto(produto_id),
    foreign key (usuario_id) references usuario(usuario_id),
    foreign key (item_id) references item_pedido(item_id)
);