create database padaria;

-- CRIA TABELAS
create table ingredientes(
	id int auto_increment primary key,
	nome varchar(100) not null,
    qtd_estoque int
);

create table categorias(
	id int auto_increment primary key,
	nome varchar(100) not null
);

create table produtos(
	id int auto_increment primary key,
	nome varchar(50) not null,
    descricao Varchar(100),
    id_categoria int not null,
    constraint produto_tem_categoria_fk
		foreign key (id_categoria) references categorias(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

create table receitas_produtos(
	id int auto_increment primary key,
    quantidade int,
    id_ingrediente int not null,
    id_produto int not null,
    constraint receita_tem_ingrediente_fk
		foreign key (id_ingrediente) references ingredientes(id)
        ON UPDATE CASCADE 
        ON DELETE RESTRICT,
	constraint receita_tem_produto_fk
		foreign key (id_produto) references produtos(id)
        ON UPDATE CASCADE 
        ON DELETE RESTRICT
);

create table producao(
	id int auto_increment primary key,
    data_producao datetime not null,
    quantidade_produzida int not null,
    id_produto int not null,
    constraint producao_tem_produto_fk
		foreign key (id_produto) references produtos(id)
        ON UPDATE CASCADE 
        ON DELETE RESTRICT
);

ALTER TABLE produtos ADD COLUMN tempo_validade datetime not null;


-- POPULA AS TABELAS:
INSERT INTO ingredientes (nome, qtd_estoque) VALUES
('Farinha de trigo', 500),
('Açúcar', 200),
('Leite', 100),
('Ovos', 50),
('Fermento em pó', 50),
('Chocolate em pó', 100),
('Manteiga', 100),
('Chocolate', 50);

INSERT INTO categorias (nome) VALUES
('Pães'),
('Bolos'),
('Biscoitos'),
('Salgados');

INSERT INTO produtos (nome, descricao, id_categoria, tempo_validade) VALUES
('Pão Francês', 'Pão típico brasileiro', 1, '2023-05-31'),
('Bolo de Chocolate', 'Bolo de chocolate com cobertura', 2, '2023-05-29'),
('Biscoito de Polvilho', 'Biscoito típico brasileiro', 3, '2023-06-15'),
('Coxinha de Frango', 'Salgado com massa de batata e recheio de frango', 4, '2023-05-30');

INSERT INTO receitas_produtos (quantidade, id_ingrediente, id_produto) VALUES
(500, 1, 1),
(100, 2, 1),
(200, 3, 1),
(50, 4, 1),
(10, 5, 1),
(100, 6, 2),
(50, 7, 2),
(4, 4, 2),
(2, 5, 2),
(3, 1, 2),
(2, 2, 2),
(2, 7, 2),
(100, 1, 3),
(50, 2, 3),
(50, 3, 3),
(10, 4, 3),
(10, 5, 3),
(50, 1, 4),
(50, 2, 4),
(50, 3, 4),
(50, 4, 4),
(10, 7, 4);

INSERT INTO producao (data_producao, quantidade_produzida, id_produto) VALUES
('2023-05-07 08:30:00', 50, 1),
('2023-05-07 10:00:00', 2, 2),
('2023-05-07 11:30:00', 100, 3),
('2023-05-07 13:00:00', 20, 4);

SELECT * FROM ingredientes;
SELECT * FROM produtos;
SELECT * FROM categorias;
SELECT * FROM receitas_produtos;
SELECT * FROM producao;

-- a) Exibir quantos produtos há para cada categoria; 
SELECT c.nome as categoria, COUNT(p.id) as quantidade
FROM categorias c
JOIN produtos p ON p.id_categoria = c.id
GROUP BY c.id;

-- b) Exibir todos os produtos, quais ingredientes e em que quantidade são  utilizados para produzi-lo; 
SELECT p.nome as produto, i.nome as ingrediente, rp.quantidade
FROM produtos p
JOIN receitas_produtos rp ON rp.id_produto = p.id
JOIN ingredientes i ON i.id = rp.id_ingrediente;

-- c) Exibir qual a quantidade produzida de cada produto dos últimos 30 dias; 
SELECT p.nome as produto, SUM(prd.quantidade_produzida) as qtd_produzida
FROM produtos p
JOIN producao prd ON p.id = prd.id_produto
WHERE data_producao >= DATE_SUB(NOW(), INTERVAL 30 DAY)
GROUP BY p.nome;

-- d)Se for dobrada a produção para o próximo mês, quanto de ingrediente será  necessário.  
SELECT p.nome as produto, SUM(rp.quantidade * prd.quantidade_produzida * 2) as qtd_produzida
FROM produtos p
JOIN producao prd ON p.id = prd.id_produto
JOIN receitas_produtos rp ON p.id = rp.id_produto
WHERE prd.data_producao >= DATE_SUB(NOW(), INTERVAL 30 DAY)
GROUP BY p.nome;

-- e) Mostrar os ingredientes que nunca foram utilizados;
SELECT i.nome as ingredientes
FROM ingredientes i
WHERE id NOT IN (SELECT DISTINCT id_ingrediente FROM receitas_produtos);

-- f) Crie uma trigger para garantir o controle de estoque dos produtos fabricados. Quanto um produto for fabricado deve dar saída dos estoque dos ingredientes utilizados. 
-- Caso ocorra o estorno da fabricação, manter o estoque dos ingredientes atualizado também;
DELIMITER $$
CREATE TRIGGER atualiza_estoque_ingredientes AFTER INSERT ON producao
FOR EACH ROW
BEGIN
  -- atualiza o estoque dos ingredientes ao produzir um novo produto
  IF NEW.quantidade_produzida > 0 THEN
    UPDATE ingredientes i
    INNER JOIN receitas_produtos rp ON i.id = rp.id_ingrediente
    SET i.qtd_estoque = i.qtd_estoque - (rp.quantidade * NEW.quantidade_produzida)
    WHERE rp.id_produto = NEW.id_produto;
  END IF;

  -- atualiza o estoque dos ingredientes ao estornar a fabricação de um produto
  IF NEW.quantidade_produzida < 0 THEN
    UPDATE ingredientes i
    INNER JOIN receitas_produtos rp ON i.id = rp.id_ingrediente
    SET i.qtd_estoque = i.qtd_estoque + (rp.quantidade * ABS(NEW.quantidade_produzida))
    WHERE rp.id_produto = NEW.id_produto;
  END IF;
END $$
DELIMITER ;


-- g) Utilizando controle de transações, atualize as receitas para reduzir em 10% a  quantidade de fermento utilizada; 
SET autocommit=0;
start transaction;

-- h) Confirme a transação do exercício anterior; 
commit;

-- i) Utilizando controle de transações, exclua todos os registros de produção do último mês; 
start transaction;

DELETE FROM producao
WHERE data_producao >= DATE_SUB(NOW(), INTERVAL 30 DAY);

-- j)Desfaça a transação realizada no exercício anterior;
rollback;
