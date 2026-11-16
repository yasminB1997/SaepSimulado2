CREATE DATABASE simulado2_db;

USE simulado_db;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

CREATE TABLE veiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_veiculo VARCHAR(100) NOT NULL,
    bloco VARCHAR(50) NOT NULL,
    cliente_id  INT NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,

    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE agendamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    descricao VARCHAR(255),
    veiculo_id INT NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,

    FOREIGN KEY (veiculo_id) REFERENCES veiculos (id)
);

use simulado_db;

INSERT INTO usuarios 
(nome, email, senha, created_at, updated_at)
VALUES
('Administrador', 'admin@saep.com', SHA2('123456', 256), NOW(), NOW()),
('Carlos Oliveira', 'carlos@saep.com', SHA2('123456', 256), NOW(), NOW()),
('Mariana Santos', 'mariana@saep.com', SHA2('123456', 256), NOW(), NOW());


INSERT INTO clientes
(nome, cpf, telefone, email, created_at, updated_at)
VALUES
('João da Silva', '12345678901', '(16) 99999-1111', 'joao@email.com', NOW(), NOW()),
('Maria Oliveira', '98765432100', '(16) 98888-2222', 'maria@email.com', NOW(), NOW()),
('Carlos Santos', '11122233344', '(16) 97777-3333', 'carlos@email.com', NOW(), NOW()),
('Ana Souza', '55566677788', '(16) 96666-4444', 'ana@email.com', NOW(), NOW());

INSERT INTO veiculos
(numero_veiculo, bloco, cliente_id, created_at, updated_at)
VALUES
('1', 'gol',  1, NOW(), NOW()),
('2', 'hornet',  1, NOW(), NOW()),
('3', 'wolksvagem' , 2, NOW(), NOW()),
('4', 'prisma', 3, NOW(), NOW()),
('5', 'civic',  4, NOW(), NOW());
INSERT INTO agendamentos
(data, hora, descricao, veiculo_id, created_at, updated_at)
VALUES
('2026-09-21', '08:00:00', 'Reunião do executivo' 1, NOW(), NOW()),
('2026-09-22', '10:30:00', 'Alinhamento de tarefas', 2, NOW(), NOW()),
('2026-09-23', '14:00:00', 'Revisão das tarefas', 3, NOW(), NOW()),
('2026-09-24', '09:00:00', 'Runião semestral', 4, NOW(), NOW()),
('2026-09-25', '15:30:00', 'Reunião RH', 5, NOW(), NOW()),
('2026-09-26', '11:00:00', 'Alinhamento de tarefas2', 1, NOW(), NOW());