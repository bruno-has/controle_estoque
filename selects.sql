-- Produtos abaixo do estoque
select nome, estoque_atual, estoque_minimo 
from produto
where estoque_atual <= estoque_minimo;

-- Listar usuários por ordem alfabética
select nome, cargo 
from usuario
order by nome;

-- Consulta pedidos e seus fornecedores
select p.pedido_id, f.nome as fornecedor
from pedido p
join fornecedor f on f.fornecedor_id = p.fornecedor_id;

-- Consulta total de itens por pedido
select pedido_id, count(*) as total_itens
from item_pedido
group by pedido_id;

-- Consulta produtos mais caros
select nome, preco 
from produto
order by preco desc limit 5;
