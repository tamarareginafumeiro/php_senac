-- Crie um banco de dados com o seguinte nome: exercicio_SQL01, em seguida faça o que se pede:
 --Crie uma tabela chamada “Alunos” com as colunas “ID_Aluno”, “Nome” e “Sobrenome”.
CREATE TABLE `alunos` (
  `id_Aluno` int(10) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Sobrenome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--Insira dados na tabela “Alunos”.
 INSERT INTO `alunos` (`Nome`, `Sobrenome`) VALUES
    ('Maria', 'Silva'),
    ('Ana', 'Fernandes'),
    ('Carlos', 'Avarenga'),
    ('Joaquim', 'Roberto'),
    ('Cristina', 'Santos');

--Selecione todos os primeiros nomes dos alunos.
SELECT nome FROM alunos;

--Crie uma tabela chamada “Cursos” com as colunas “ID_Curso” e “Nome_Curso”.
CREATE TABLE `exercicio_sql01`.`cursos` (
  `id_cursos` INT(10) NOT NULL,
  `nome_curso` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_cursos`));

  --Selecione os nomes dos cursos para um aluno específico (por exemplo, ID_Aluno = 1).
 INSERT INTO `cursos` (`id_cursos`,`nome_curso`) VALUES
    ('1','Informatica para internet'),
    ('2','Banco de dados');


    --Selecione os nomes dos cursos para um aluno específico (por exemplo, ID_Aluno = 1).
    Select alunos.nome, cursos.id_cursos from alunos, cursos where alunos.id = cursos.id_cursos and cursos.id_cursos = 1;
    SELECT * FROM alunos;
    SELECT * FROM alunos where id = 1;

    --Crie uma tabela chamada Clientes com as colunas ID (inteiro, chave primária), Nome (texto), Idade (inteiro) e Cidade (texto).
    CREATE TABLE `exercicio_sql01`.`clientes` (
    `id_clientes` INT(10) NOT NULL AUTO_INCREMENT,
    `nome_clientes` VARCHAR(50) NOT NULL,
    `idade` INT(4) NOT NULL,
    `cidade` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id_clientes`));
  
  --Insira três registros fictícios na tabela.
   INSERT INTO `clientes` (`nome_clientes`, `idade`, `cidade`) VALUES
    ('Fernanda', '15', 'São Paulo'),
    ('Kely', '25', 'Cajamar'),
    ('Tamara', '33', 'Osasco');

  --Escreva uma consulta SQL para selecionar todos os registros da tabela.
    SELECT * FROM clientes;


  --Crie uma tabela chamada Pedidos com as colunas PedidoID (inteiro, chave primária), ClienteID (inteiro, chave estrangeira referenciando a tabela Clientes), DataPedido (data) e ValorTotal (decimal).
     CREATE TABLE `exercicio_sql01`.`pedidos` (
    `id_pedido` INT(10) NOT NULL AUTO_INCREMENT,
    `nome_clientes` VARCHAR(50) NOT NULL,
    `idade` INT(4) NOT NULL,
    `cidade` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id_clientes`));  
  
  --Insira dois registros fictícios na tabela. 

  
  --Escreva uma consulta SQL para selecionar o Nome do cliente e a DataPedido para todos os pedidos.























    

