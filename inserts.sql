insert into categoria (nome)
values ('Calça'), ('Camisa'), ('Jaqueta'), ('Calçado'), ('Bermuda'), ('Acessório');

insert into usuario (nome, cargo, login, senha)
values ('Bruno', 'Administrador', 'bruno', '123'),
('Maria', 'Gerente', 'maria', '456'),
('João', 'Assistente', 'joao', '789');

insert into fornecedor (nome, cnpj, telefone, email, endereco)
values ('Tudo Jeans Ltda.', '00.000.000/0000-00', '(00) 00000-0000', 'tudojeanscontato@gmail.com', 'Rua Central, 500'),
('Fashion Group', '11.111.111/1111-11', '(11)11111-1111', 'contato@fashiongroup.com', default),
('Pé de Ouro', '22.222.222/2222-22', '22922222222', default, 'Av dos Bandeirantes, 476'),
('Style Vision Acessórios', '33.333.333/3333-33', default, 'stylevisioncontato@gmail.com', default);

insert into produto (categoria_id, nome, lote_produto, unidade_medida, estoque_minimo, estoque_atual, preco)
values (1,'Calça Jeans','LT0059','un',30,0,29.99),
(1,'Calça Moletom','LT0081','un',20,0,26.99),
(2,'Camisa Branca','LT0032','un',30,0,24.99),
(2,'Camisa Preta','LT0030','un',30,0,24.99),
(2,'Camisa Colorida','LT0019','un',30,0,24.99),
(3,'Jaqueta com capuz','LT0009','un',20,0,49.99),
(3,'Jaqueta sem capuz','LT0012','un',20,0,44.99),
(4,'Tênis X','LT0022','cx',15,0,57.99),
(4,'Tênis Y','LT0018','cx',15,0,59.99),
(4,'Tênis Z','LT0025','cx',15,0,55.99),
(4,'Chinelo','LT0042','cx',20,0,29.99),
(5,'Bermuda Tactel','LT0033','un',20,0,22.99),
(5,'Bermuda Moletom','LT0039','un',20,0,19.99),
(6,'Boné','LT0006','un',20,0,24.99),
(6,'Óculos','LT0008','un',15,0,16.99);

insert into item_pedido (pedido_id, produto_id, quantidade, item_preco)
values (1, 1, 30, default),
(2, 5, 30, default),
(5, 12, 25, default);

insert into pedido (fornecedor_id, data_emissao, data_entregue, status_pedido)
values (1, default, null, 'Pendente'),
(2, default, null, 'Pendente'),
(5, default, null, 'Pendente');

insert into movimentacao (produto_id, usuario_id, item_id, data_movimentacao, tipo, motivo, quantidade)
values (1, 1, 1, default, 'Entrada', default, 30),
(5, 1, 1, default, 'Entrada', default, 30),
(12, 1, 1, default, 'Entrada', default, 25);