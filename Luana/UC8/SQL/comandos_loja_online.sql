--0 = false
--1- true verdadeiro


--Selecionando uma tabela
SELECT * FROM loja_online;

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
from encomendas_produtos ep left join 
encomendas e
on e.id = ep.id_encomenda
left join produtos p
on p.id = ep.id_produto
where e.id = 3;

--Trazendo valores -- CONCAT == concatenação
select
e.id,
e.data_hora,
p.produto,
ep.quantidade,
p.preco_unidade * ep.quantidade as total
from encomendas_produtos ep left join 
encomendas e
on e.id = ep.id_encomenda
left join produtos p
on p.id = ep.id_produto
where e.id = 3;

-- valores com quantidade -- round == vai arredondar os valores para duas casas decimais
select
e.id,
e.data_hora,
p.produto,
ep.quantidade,
concat(round(p.preco_unidade * ep.quantidade,2), 'R$') as total
from encomendas_produtos ep left join 
encomendas e
on e.id = ep.id_encomenda
left join produtos p
on p.id = ep.id_produto
where e.id = 3;

-- Quero saber qual é o primeiro cliente de Lisboa na tabela cliente.
--MIN - Permite ver o valor mínimo em um conjunto de resultado
select id, nome from clientes where cidade = "Lisboa" LIMIT 1;
Select MIN(id), nome from clientes where cidade = "Lisboa";

--MAX - Permite ver o valor máximo em um conjunto de resultado
select MAX(id), nome from clientes where email like "%@gmail.com";

--AVG - permite calcular a média de um conjunto de resultados NÚMERICO
select AVG(preco_unidade) preco_medio from produtos; -- sem arrendoar
select round( AVG(preco_unidade),2) preco_medio from produtos; --arredondando para duas casas após a virgula

--SUM - Permite ver o somatorio (calculo total) de um conjunto de resultados.
SELECT SUM(preco_unidade) total_preco from produtos;-- sem arrendoar
SELECT round(SUM(preco_unidade),2) total_preco from produtos;--arredondando para duas casas após a virgula

--Desafio: Vamos calcular uma determinada encomenda, buscando primeiramente seus dados (id-50)

SELECT
e.id, -- atributo da tabela encomenda
e.data_hora,-- atributo da tabela encomenda
p.produto,-- atributo da tabela produto
p.preco_unidade,-- atributo da tabela produto
ep.quantidade, -- atributo da tabela encomenda_produto
from encomendas_produtos ep
LEFT join encomendas e 
on ep.id_encomenda = e.id
LEFT join produtos p
on ep.id_produto = p.id
where e.id = 50;
---- 3 produtos (preco_unidade * quantidade)
SELECT
e.id, -- atributo da tabela encomenda
e.data_hora,-- atributo da tabela encomenda
p.produto,-- atributo da tabela produto
p.preco_unidade,-- atributo da tabela produto
ep.quantidade, -- atributo da tabela encomenda_produto
round(p. preco_unidade * quantidade,2) as total -- para acresecentar casas decimais
from encomendas_produtos ep
LEFT join encomendas e 
on ep.id_encomenda = e.id
LEFT join produtos p
on ep.id_produto = p.id
where e.id = 50;



SELECT
e.id, -- atributo da tabela encomenda
e.data_hora,-- atributo da tabela encomenda
p.produto,-- atributo da tabela produto
p.preco_unidade,-- atributo da tabela produto
ep.quantidade, -- atributo da tabela encomenda_produto
CAST(ep.quantidade *p. preco_unidade As decimal(10,2)) As total -- para acresecentar casas decimais
from encomendas_produtos ep
LEFT join encomendas e 
on ep.id_encomenda = e.id
LEFT join produtos p
on ep.id_produto = p.id
where e.id = 50;

--subquery
select id_encomenda, id_cliente, SUM(total) total
from
(
    select
    ep.id_encomenda,
    e.id_cliente,
    ep.quantidade,
    p.produto,
    CAST(ep.quantidade *p. preco_unidade As decimal(10,2)) As total 
    from encomendas_produtos ep
    LEFT join produtos p on ep.id_produto = p.id
    LEFT join encomendas e on ep.id_encomenda = e.id
    where e.id = 50
)a
Group by id_encomenda


SELECT *FROM clientes where status = "Ativo";




