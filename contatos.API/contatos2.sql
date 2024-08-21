-- Criando o banco de dados "contatos2"
CREATE DATABASE IF NOT EXISTS contatos2;

-- Usando o banco de dados "contatos2"
USE contatos2;

-- Criando a tabela "contatos_info"
CREATE TABLE IF NOT EXISTS contatos_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Inserindo dados na tabela "contatos_info"
INSERT INTO contatos_info (nome, telefone, email) VALUES 
('Alice Silva', '1234-5678', 'alice.silva@example.com'),
('Bob Souza', '8765-4321', 'bob.souza@example.com'),
('Carlos Lima', '1234-8765', 'carlos.lima@example.com'),
('Diana Martins', '4321-5678', 'diana.martins@example.com'),
('Elias Costa', '5678-1234', 'elias.costa@example.com');