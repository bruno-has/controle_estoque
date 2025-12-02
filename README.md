# Sistema de Gerenciamento de controle de estoque

Este repositório contém todos os scripts SQL utilizados no projeto de banco de dados para criação, inserção e manipulação de dados.

--- 

## Arquivos incluidos

- 1- add_tabelas.sql -> criação do banco de dados e de todas suas tabelas com suas respectivas chaves e restrições
- 2- inserts.sql -> comandos insert para inserir os dados
- 3- selects.sql -> comandos de consulta
- 4- updates_deletes.sql -> comandos de atualizar e excluir dados

---

## Modelagem do banco

O sistema é composto pelas seguintes entidades:
  - usuario: quem acessa o sistema
  - fornecedor: origem dos produtos
  - categoria: classificação dos produtos
  - produto: itens controlados no estoque
  - pedido: solicitações feitas ao fornecedor
  - item_pedido: produtos pertencentes ao pedido
  - movimentacao: entradas e saidas no estoque

Seus relacionamentos incluem:
  - um fornecedor pode ter vários pedidos
  - um pedido pode conter vários itens
  - um produto pertence a uma única categoria
  - cada movimentação pertence a um usuário

---

## Como executar

- 1- executar o arquivo add_tabelas.sql
- 2- executar o arquivo inserts.sql
- 3- executar o arquivo selects.sql
- 4- executar o arquivo updates_deletes.sql
