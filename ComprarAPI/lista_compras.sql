-- Criando o banco de dados "lista_compras"
CREATE DATABASE IF NOT EXISTS lista_compras2;

-- Usando o banco de dados "lista_compras"
USE lista_compras2;

-- Criando a tabela "itens_compra"
CREATE TABLE IF NOT EXISTS itens_compra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    comprado BOOLEAN DEFAULT FALSE
);

-- Inserindo dados na tabela "itens_compra"
INSERT INTO itens_compra (nome_produto, quantidade) VALUES 
('Leite', 2),
('Pão', 3),
('Ovos', 12),
('Arroz', 1),
('Feijão', 1);


-- Criando a tabela "curso"
CREATE TABLE IF NOT EXISTS curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    nome_aluno VARCHAR(100) NOT NULL,
    status_matricula TINYINT(3) NOT NULL
);

INSERT INTO `tb_curso`(`nome_curso`, `nome_aluno`, `status_matricula`) VALUES 
(1,'Estetica','Maria Eduarda Fonseca',0),
(2,'Banco de dados','João Silva', 1),
(3, 'Jogos','Emily Santos', 1),
(4,'Informatica para Internet','Eduardo Santos', 1),
(5,'Informatica para Internet','Pietra Blasco', 0);