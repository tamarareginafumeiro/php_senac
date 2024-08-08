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

























    

