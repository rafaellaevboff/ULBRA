SET SQL_SAFE_UPDATES = 0; -- pernitir dar delete/update sem where

-- Banco de dados: `pedidos_pizzaria`
create database pedidos_pizzaria;


CREATE TABLE enderecos (
	id int NOT NULL auto_increment primary key,
    cidade VARCHAR(50) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    num_casa int NOT NULL,
    apartamento int DEFAULT NULL
);

-- Estrutura para tabela `clientes`
CREATE TABLE clientes (
  id int NOT NULL auto_increment primary key,
  nome varchar(100) NOT NULL,
  id_endereco int NOT NULL,
  constraint cliente_tem_endereco_fk
		foreign key (id_endereco) references enderecos(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
  telefone varchar(14) NOT NULL,
  data_cadastro date NOT NULL
);

-- Estrutura para tabela `funcionarios`
CREATE TABLE funcionarios (
  id int NOT NULL auto_increment primary key,
  nome varchar(100) NOT NULL,
  tipo_funcionário char(1) NOT NULL,
  data_admissao date NOT NULL,
  data_cadastro date NOT NULL,
  data_desligamento date DEFAULT NULL
);

-- Estrutura para tabela bebidas
CREATE TABLE bebidas (
  id int NOT NULL auto_increment primary key,
  nome varchar(100) NOT NULL,
  valor double NOT NULL
);

-- Estrutura para tabela `pizzas`
CREATE TABLE pizzas (
  id int NOT NULL auto_increment primary key,
  tamanho varchar(1) NOT NULL,
  sabor varchar(255) NOT NULL,
  valor double NOT NULL, 
  descricao varchar(255) NOT NULL
);

-- Estrutura para tabela `pedidos`
CREATE TABLE pedidos (
  id int NOT NULL auto_increment primary key,
  id_pizza int NOT NULL,
  constraint pedido_tem_pizza_fk
		foreign key (id_pizza) references pizzas(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
  id_bebida int DEFAULT NULL,
  constraint pedido_tem_bebida_fk
		foreign key (id_bebida) references bebidas(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
  id_funcionario int NOT NULL,
  constraint pedido_tem_funcionario_fk
		foreign key (id_bebida) references funcionarios(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
  
  id_cliente int NOT NULL,
  constraint pedido_tem_cliente_fk
		foreign key (id_cliente) references clientes(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
	data_pedido datetime NOT NULL,
  status_pedido CHAR(1) NOT NULL
) ;

-- R -> RECEBIDO
-- P -> AGUARDANDO PAGAMENTO
-- E -> AGUARDANDO ENTREGA
-- C -> CANCELADO

-- Populando a tabela `endereços`
INSERT INTO enderecos (cidade, rua, num_casa, apartamento)
VALUES ('São Paulo', 'Rua Augusta', 123, 456),
       ('Rio de Janeiro', 'Avenida Atlântica', 1001, 2001),
       ('Belo Horizonte', 'Rua Alagoas', 789, 2852),
       ('Salvador', 'Avenida Oceânica', 555, 1002),
       ('Curitiba', 'Rua XV de Novembro', 456, 301);

-- Populando a tabela `clientes`
INSERT INTO clientes (nome, id_endereco, telefone, data_cadastro) VALUES
('João Silva', 1, '9999-9999', '2022-01-01'),
('Maria Santos', 2, '8888-8888', '2022-02-15'),
('Pedro Alves', 3, '7777-7777', '2022-03-20'),
('Mariana Oliveira', 4, '6666-6666', '2022-04-30'),
('Carlos Souza', 5, '5555-5555', '2022-05-10');

-- Populando a tabela `funcionarios`
INSERT INTO funcionarios (nome, tipo_funcionário, data_admissao, data_cadastro) VALUES
('Ana Santos', 'M', '2020-01-01', '2022-01-01'),
('José Silva', 'G', '2021-02-15', '2022-02-15'),
('Paula Almeida', 'M', '2021-03-20', '2022-03-20'),
('Lucas Oliveira', 'G', '2022-04-30', '2022-04-30'),
('Renata Souza', 'M', '2022-05-10', '2022-05-10');

-- Populando a tabela bebidas
INSERT INTO bebidas (nome, valor) VALUES
('Coca-Cola', 4.5),
('Guaraná Antártica', 4),
('Suco de Laranja', 5),
('Água Mineral', 3),
('Suco de Uva', 5.5);

-- Populando a tabela pizzas
INSERT INTO pizzas (tamanho, sabor, valor, descricao) VALUES
('P', 'Calabresa', 20.00, 'Pizza de Calabresa'),
('M', 'Mussarela', 25.00, 'Pizza de Mussarela'),
('G', 'Portuguesa', 35.00, 'Pizza Portuguesa'),
('P', 'Chocolate',  20.00, 'Pizza de Chocolate'),
('M', 'Frango com Catupiry', 27.00, 'Pizza de Frango com Catupiry');

-- Populando a tabela `pedidos`
INSERT INTO pedidos (id_pizza, id_bebida, id_funcionario, data_pedido, id_cliente, status_pedido) VALUES
(1, 2, 1, '2023-04-09 02:08:45', 1, 'P'),
(2, 3, 2, '2023-04-09 02:08:45', 2, 'R'),
(1, 1, 3, '2023-04-09 02:08:45', 3, 'E'),
(3, 4, 1, '2023-04-09 02:08:45', 4, 'C'),
(2, 3, 2, '2023-04-09 02:08:45', 5, 'P');


-- VIEWS 

CREATE VIEW detalhes_pedidos  AS 
SELECT 	c.nome AS nome_cliente, 
		p.tamanho AS tamanho_pizza, 
		p.sabor AS nome_pizza, 
		b.nome AS nome_bebida
FROM (((clientes c 
	join pedidos pe on(c.id = pe.id_cliente)) 
	left join pizzas p on(p.id = pe.id_pizza)) 
	left join bebidas b on(b.id = pe.id_bebida));


CREATE VIEW view_pedidos_dia  AS 
SELECT 	p.id AS id, 
		p.id_pizza AS id_pizza, 
		p.id_bebida AS id_bebida, 
		p.id_funcionario AS id_funcionario, 
		p.data_pedido AS data_pedido, 
		p.id_cliente AS id_cliente 
FROM pedidos p WHERE cast(p.data_pedido as date) = curdate();


CREATE VIEW pedidos_a_entregar AS
SELECT 	p.id AS pedido_id,
		c.nome AS cliente_nome,
		e.rua AS rua,
		e.num_casa AS numero_casa,
		e.apartamento AS apartamento
FROM pedidos p
INNER JOIN clientes c ON p.id_cliente = c.id
INNER JOIN enderecos e ON e.id = c.id_endereco
WHERE p.status_pedido = 'E';

-- STORE PROCEDURE

-- CRIA STORE ROCEDURE PRA EXCLUIR PIZZA
DELIMITER $$ 
CREATE PROCEDURE exclui_pizza(p_id int)
BEGIN	
	DELETE FROM pizzas
	WHERE id = p_id;
END$$
DELIMITER ;


-- CRIA STORE PROCEDURE PARA MOSTRAR VALOR TOTAL DO PEDIDO
DELIMITER $$ 
CREATE PROCEDURE mostra_valor_pedido(p_id int)
BEGIN	
	SELECT p.valor as valor_pizza, b.valor as valor_bebida, (p.valor + b.valor) AS valor_total
    FROM pedidos pd
    LEFT JOIN bebidas b ON pd.id_bebida = b.id
	INNER JOIN pizzas p ON pd.id_pizza = p.id
    WHERE pd.id = p_id;
END$$
DELIMITER ;


-- CRIA STORE PROCEDURE PARA ADICIONAR UM PEDIDO
DELIMITER $$ 
CREATE PROCEDURE cria_pedido(p_id_pizza int, p_id_bebida int, p_id_funcionario int, p_data_pedido datetime, p_id_cliente int, p_status_pedido VARCHAR(1))
BEGIN	
	INSERT INTO pedidos (id_pizza, id_bebida, id_funcionario, data_pedido, id_cliente , status_pedido) VALUES
		(p_id_pizza, p_id_bebida, p_id_funcionario, p_data_pedido, p_id_cliente, p_status_pedido);
END$$
DELIMITER ;


-- CRIA STORE PROCEDURE PARA MOSTRAR O LUCRO DIÁRIO
DELIMITER $$ 
CREATE PROCEDURE lucro_diario(data_lucro date)
BEGIN	
    DECLARE primeira_hora DATETIME;
    DECLARE ultima_hora DATETIME;
    SET primeira_hora = cast(CONCAT(data_lucro , ' 00:00:00') AS DATETIME);
    SET ultima_hora = cast(CONCAT(data_lucro , ' 23:59:59') as DATETIME);
    
	SELECT SUM(p.valor) as valor_pizza, SUM(b.valor) as valor_bebida, (SUM(p.valor) + SUM(b.valor)) AS lucro_diario
	FROM pedidos pd
    LEFT JOIN bebidas b ON pd.id_bebida = b.id
	INNER JOIN pizzas p ON pd.id_pizza = p.id
	WHERE pd.data_pedido >= primeira_hora AND pd.data_pedido <= ultima_hora AND pd.status_pedido = 'R';
END$$
DELIMITER ;


-- CRIA STORE PROCEDURE PARA MOSTRAR A RELAÇÃO DE VENDEDORES E A QUANTIDADE DE PEDIDOS VENDIDOS, ORDENANDO 
DELIMITER $$
CREATE PROCEDURE pedidos_por_vendedor()
BEGIN
    SELECT f.nome AS vendedor, COUNT(p.id) AS pedidos_realizados
    FROM pedidos p
    INNER JOIN funcionarios f ON p.id_funcionario = f.id
    GROUP BY f.id
    ORDER BY pedidos_realizados DESC;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE listar_pizzas_por_sabor_tamanho()
BEGIN
    SELECT tamanho, GROUP_CONCAT(pizzas.sabor SEPARATOR ', ') AS pizzas_sabores
    FROM pizzas 
    GROUP BY tamanho;
END $$
DELIMITER ;


call pedidos_pizzaria.exclui_pizza(2); -- não irá apagar porque foi definido que se a pizza estiver ligada em um pedido ela não poderá ser excluída
call pedidos_pizzaria.exclui_pizza(4);
call pedidos_pizzaria.cria_pedido(1, 2, 3, '2023-04-11 11:05:02', 2, 'E');
call pedidos_pizzaria.cria_pedido(1, 2, 3, '2023-04-11 11:05:02', 2, 'R');
call pedidos_pizzaria.cria_pedido(3, 2, 3, '2023-04-11 11:05:02', 2, 'R');