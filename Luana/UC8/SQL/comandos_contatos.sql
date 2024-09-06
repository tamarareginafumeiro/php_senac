--Selecionando uma tabela
SELECT * FROM telefones;
SELECT * FROM amigos;

-- Selecionando uma tuplada tabela (tupla=linha)
SELECT * FROM telefones where id = 5;

Select amigos.nome, telefones.id_amigo from amigos, telefones where amigos.id = telefones.id_amigo and telefones.id_amigo = 5;

-- Selecionando apenas o telefone da cristina
Select amigos.nome, telefones.numero from amigos, telefones where amigos.id = telefones.id_amigo and amigos.nome = "Cristina";

-- Quero a mesma query, mas com o nome da coluna igual ao nome da cristina
Select telefones.numero 'Cristina' from amigos, telefones where amigos.id = telefones.id_amigo and amigos.nome;

--Selecionando uma coluna da tabela:
SELECT nome from amigos;

--obter dados dos clientes ordenados por ordem alfabetica do nome
SELECT * FROM amigos order by nome asc;
SELECT nome FROM amigos order by nome asc;

--Quero todos os numeros que comecem com 5
Select * from telefones where numero like '5%';
Select * from amigos where nome like 'd%';

-- Selecionando dois atributos de uma mesma tabela
SELECT id, nome from amigos;

--CRUD
-- Atualiza o nome Cristina para Maria (não deleta e sim substitui)
UPDATE amigos set nome = "Maria" where nome = "Cristina"; --para essa opção funcionar tem que desabilitar a segurança
UPDATE amigos set nome = "Maria" where id = "5";


