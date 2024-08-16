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
SELECT id, nome, email FROM clientes LIMIT 20 offset 5;
SELECT id, nome, email FROM clientes LIMIT 10, 3;

--Buscando o produto mais barato da loja
SELECT * FROM produtos order by preco_unidade ASC LIMIT 1;

--Buscando o produto mais caro da loja
SELECT * FROM produtos order by preco_unidade DESC LIMIT 1;
 
 -- 3 produtos mais caros
SELECT * FROM produtos order by preco_unidade DESC LIMIT 0,3;

--DISTINCT = remove valores duplicados nas querys
SELECT distinct cidade from clientes;
SELECT distinct cidade from clientes ORDER BY cidade;

-- Ordenas de forma alfabetica
SELECT distinct preco_unidade from produtos ORDER BY preco_unidade;


--IMPORTANTE: se alguma coluna tiver com valores nulos(NULL), o distinct vai incluir esse valor na coluna.

-- Buscar apenas os clientes que moram na cidade de LISBOA.
SELECT *from clientes where cidade = "LISBOA";

-- Buscar apenas as clientes do sexo feminino.
SELECT *from clientes where sexo = "F";

--Homens que moram Coimbra
SELECT *from clientes where cidade = "coimbra" and sexo = "M";

-- Operador lógicos usando os diferentes "<>";
SELECT * FROM colaboradores where sexo <> "F";

--Produtos cujo o preço é superior a 1 (somente numerico, traz somente resultado com numeros)
--neste caso só funciona com numneros e não com caractestes
SELECT * From produtos where preco_unidade > 1;

-- Buscando um intervalo de inofrmações (somente numerico, traz somente resultado com numeros)
--neste caso só funciona com numneros e não com caractestes
Select * from produtos where preco_unidade >=1 and  preco_unidade <=2;

--OR
SELECT nome, email from clientes where nome = "Paris" or sexo = "m";

--NOT
Select nome from clientes where not sexo = "m";

--BETWEEN
Select * from produtos where preco_unidade between 1 and 2;

--Buscar as encomendas na ultima 24 horas do dia 08/03/2030
SELECT * from encomendas;
SELECT * from encomendas where data_hora BETWEEN '2030-03-08 00:00:00' and '2030-03-08 23:59:59';

--IN =  devolve todos os resgistros que estejam comprreendidos desntro de uma coleção de valores
SELECT nome, cidade from clientes where cidade IN("Lisboa", "Viseu");

-- Selecionando dados que estiver na frente da % query fara a busca (LIKE)
select nome from clientes where nome like "Daniel%"; --% para traz

-- Neste caso será buscado o que tiver depois da %
select nome from clientes where nome like "%Daniel";--% para frente

-- Neste caso os caracteres que estiver entre a % será buscando na query
select nome, email from clientes where email like "%gmail.com%";-- entre  as %

--Neste caso será feito uma busca dentro do campo onde o caracter começa com A e termina com S
select nome from clientes where nome like "A%S"; -- busca o primeiro com a letra "A" e segundo nome com a letra "S"

-- Neste caso será buscado o que estiver antes da % e o "_" será mostrará o caractere que representa o espaço (um caracter)
select nome from clientes where nome like "francisc_%";
-- Neste caso  o "_" está buscando caracteres não especificado, porém o terceiro caracter deverá ser a letra "A"
select nome from clientes where nome like "___a%";

-- Buscar as primerias 5 encomendas, ajudando duas tabelas: ecomendas e clientes
SELECT clientes.nome, encomendas.id FROM clientes, encomendas where clientes.id = encomendas.id_cliente LIMIT 5;

--mesma query com ALIAS
SELECT c.nome, e. * FROM cliente c, ecomendas e where c.id = e.id_cliente LIMIT 5;

--CONCATEÇÃO ENTRE COLUNAS
-- CONCAT
select concat('O meu nome é ', nome, 'e meu e-mail é: ', email) frase from clientes LIMIT 10;

--======== JOINS ======
/*(INNER) Join == Registros de retorno que têm valores correspondentes em ambas as tabelas
 
LEFT JOIN == Retorna todos os registros da tabela da esquerda  e os registros combinados da tabela da direita
 
RIGHT JOIN == Retorna todos os registros da tabela da direita, e os registros
combinados da tabela da esquerda
 
FULL JOIN == Devolve todos os registros quando há uma correspondência
na tabela da esquerda ou da direita
 
mostrar a tabela de conjuntos do joins
https://alyssontmv.wordpress.com/2014/09/30/representando-sql-joins-graficamente-exemplo-usado-em-aula/ 

=== Relações===
encomendas X clientes
encomendas X colaboradores
encomendas_produtos X encomendas X  produtos
*/

 -- Queremos dados cobre as encomendas de um cliente cujo o id = 20.
SELECT c. *, e.* 
FROM clientes c 
LEFT JOIN encomendas e
on c.id = e.id_cliente
where c.id = 20;

-- 20 primeiros clientes que fizeram encomendas na loja.
SELECT e.id, e.data_hora, c.nome, c.email
FROM encomendas e 
LEFT JOIN clientes c
on e.id_cliente = c.id
LIMIT 20;  

--detalhes de 3 encomendas
-- quando foi efetuada a compra
-- que produtos foram comprados e as quantidades 
select
e.id,
e.data_hora,
p.produto,
ep.quantidade
from encomendas_produtos ep left join 
encomendas e
on e.id = ep.id_encomenda
left join produtos p
on p.id = ep.id_produto
where e.id = 3;









--CRUD
-- Atualiza o nome Cristina para Maria (não deleta e sim substitui)
UPDATE amigos set nome = "Maria" where nome = "Cristina"; --para essa opção funcionar tem que desabilitar a segurança
UPDATE amigos set nome = "Maria" where id = "5";



