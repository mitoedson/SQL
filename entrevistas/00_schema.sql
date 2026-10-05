-- Esquema usado em todos os problemas. Compatível com PostgreSQL e SQLite.

DROP TABLE IF EXISTS itens_pedido;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS funcionarios;
DROP TABLE IF EXISTS departamentos;

CREATE TABLE departamentos (
    id   INTEGER PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE funcionarios (
    id              INTEGER PRIMARY KEY,
    nome            VARCHAR(80) NOT NULL,
    salario         NUMERIC(10,2) NOT NULL,
    departamento_id INTEGER REFERENCES departamentos(id),
    gerente_id      INTEGER REFERENCES funcionarios(id),
    data_admissao   DATE NOT NULL
);

CREATE TABLE clientes (
    id            INTEGER PRIMARY KEY,
    nome          VARCHAR(80) NOT NULL,
    email         VARCHAR(100),
    cidade        VARCHAR(50),
    data_cadastro DATE NOT NULL
);

CREATE TABLE produtos (
    id        INTEGER PRIMARY KEY,
    nome      VARCHAR(80) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco     NUMERIC(10,2) NOT NULL
);

CREATE TABLE pedidos (
    id           INTEGER PRIMARY KEY,
    cliente_id   INTEGER REFERENCES clientes(id),
    data_pedido  DATE NOT NULL,
    status       VARCHAR(20) NOT NULL  -- 'pago', 'cancelado', 'pendente'
);

CREATE TABLE itens_pedido (
    id          INTEGER PRIMARY KEY,
    pedido_id   INTEGER REFERENCES pedidos(id),
    produto_id  INTEGER REFERENCES produtos(id),
    quantidade  INTEGER NOT NULL,
    preco_unit  NUMERIC(10,2) NOT NULL
);

INSERT INTO departamentos VALUES (1,'Tecnologia'),(2,'Vendas'),(3,'RH'),(4,'Financeiro');

INSERT INTO funcionarios VALUES
(1,'Ana Souza',15000,1,NULL,'2019-03-10'),
(2,'Bruno Lima',9000,1,1,'2020-07-01'),
(3,'Carla Dias',9000,1,1,'2021-01-15'),
(4,'Diego Rocha',7000,2,1,'2020-02-20'),
(5,'Elisa Prado',6500,2,4,'2022-05-05'),
(6,'Fábio Neves',6500,2,4,'2023-01-09'),
(7,'Gabriela Alves',5000,3,1,'2021-09-30'),
(8,'Heitor Matos',11000,4,1,'2018-11-12'),
(9,'Isabela Cruz',8000,4,8,'2022-08-22'),
(10,'João Pires',4500,NULL,4,'2024-02-01');

INSERT INTO clientes VALUES
(1,'Marcos Silva','marcos@email.com','São Paulo','2023-01-10'),
(2,'Paula Mendes','paula@email.com','Rio de Janeiro','2023-02-15'),
(3,'Rafael Torres',NULL,'São Paulo','2023-03-20'),
(4,'Sandra Costa','sandra@email.com','Belo Horizonte','2023-06-01'),
(5,'Tiago Ramos','tiago@email.com','Curitiba','2023-08-18'),
(6,'Úrsula Gomes','paula@email.com','Rio de Janeiro','2024-01-05'),
(7,'Vitor Lopes','vitor@email.com','São Paulo','2024-02-12');

INSERT INTO produtos VALUES
(1,'Notebook','Eletrônicos',4500),
(2,'Mouse','Eletrônicos',80),
(3,'Teclado','Eletrônicos',200),
(4,'Cadeira Gamer','Móveis',1200),
(5,'Mesa','Móveis',900),
(6,'Caderno','Papelaria',25),
(7,'Caneta','Papelaria',5);

INSERT INTO pedidos VALUES
(1,1,'2024-01-05','pago'),
(2,1,'2024-02-10','pago'),
(3,2,'2024-02-11','pago'),
(4,2,'2024-03-15','cancelado'),
(5,3,'2024-03-20','pago'),
(6,4,'2024-04-01','pendente'),
(7,1,'2024-04-12','pago'),
(8,5,'2024-04-20','pago'),
(9,2,'2024-05-02','pago'),
(10,5,'2024-05-15','pago');

INSERT INTO itens_pedido VALUES
(1,1,1,1,4500),(2,1,2,2,80),
(3,2,6,10,25),(4,3,4,1,1200),
(5,3,3,1,200),(6,4,5,1,900),
(7,5,2,3,80),(8,6,7,50,5),
(9,7,1,1,4500),(10,7,3,2,200),
(11,8,6,5,25),(12,9,4,2,1200),
(13,10,5,1,900),(14,10,2,1,80);
