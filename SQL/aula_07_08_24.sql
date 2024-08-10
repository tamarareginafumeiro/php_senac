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

-- Fazendo uma conta de multiplicação
SELECT 10*5;

--Cresente
SELECT produto FROM produtos ORDER BY produto asc;
SELECT nome, email, cidade FROM clientes ORDER BY nome asc;

--Decrescente
SELECT produto FROM produtos ORDER BY produto DESC;
SELECT nome, email, cidade FROM clientes ORDER BY nome DESC;
 
--Desta forma a ordem vem por cidade e despois nome.
SELECT nome, email, cidade FROM clientes ORDER BY cidade, nome;

-- Para ordemar de forma simultanea usamos a seguinte query
SELECT nome, email, cidade FROM clientes ORDER BY cidade asc, nome asc;
SELECT nome, email, cidade FROM clientes ORDER BY cidade DESC, nome DESC;
SELECT nome, email, cidade FROM clientes ORDER BY cidade DESC, nome asc;
SELECT nome, email, cidade FROM clientes ORDER BY cidade asc, nome DESC;

-- Organizar a tabela "produto" do mais caro para o mais barato
SELECT id, produto, preco_unidade FROM produtos ORDER BY preco_unidade DESC,

-- encomendas mais recentes
SELECT * FROM encomendas ORDER BY data_hora DESC;

--Buscar os 10 primeiros nomes tabela
SELECT id, nome, email FROM clientes LIMIT 10;

----Buscar os 10 ultimos nomes tabela
SELECT id, nome, email FROM clientes order by id desc LIMIT 10;

-- ele pegara 20 dados a partir do id 6: (offset é apartir do que vc deseja, vai iguinorar do offsert para cima)
SELECT id, nome, email FROM clientes order by id desc LIMIT 20 offset 5;




--CRUD
-- Atualiza o nome Cristina para Maria (não deleta e sim substitui)
UPDATE amigos set nome = "Maria" where nome = "Cristina"; --para essa opção funcionar tem que desabilitar a segurança
UPDATE amigos set nome = "Maria" where id = "5";



