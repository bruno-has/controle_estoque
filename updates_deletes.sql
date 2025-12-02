-- Atualizar preço
update produto 
set preco = 39.90 
where produto_id = 16;

-- Atualizar cargo
update usuario 
set cargo = 'Gerente' 
where usuario_id = 3;

-- Atualizar status de pedido
update pedido 
set status_pedido = 'Entregue' 
where pedido_id = 1;

-- Deletar usuario
delete from usuario 
WHERE usuario_id = 3;

-- Deletar produto
delete from produto 
where produto_id = 30;