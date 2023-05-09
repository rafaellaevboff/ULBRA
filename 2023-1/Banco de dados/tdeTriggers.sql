create database orcamentos_de_produtos;

create table produtos(
	prd_codigo int auto_increment primary key,
    prd_descricao varchar(100) not null,
    prd_status int,
    prd_falta int,
    prd_valor double not null,
    prd_qtd_estoque int not null
);

create table orcamentos(
	orc_codigo int auto_increment primary key,
    orc_data datetime not null,
    status int
);

create table orcamentos_produtos(
	op_codigo int auto_increment primary key,
	op_valor double not null,
    op_qtd int,
    op_status int,
    prd_codigo int not null,
    constraint op_tem_produto_fk 
		foreign key (prd_codigo ) references produtos(prd_codigo)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    orc_codigo int not null,
    constraint op_tem_orcamento_fk 
		foreign key (orc_codigo ) references orcamentos(orc_codigo)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Inserção de dados na tabela produtos
INSERT INTO produtos (prd_descricao, prd_status, prd_falta, prd_valor, prd_qtd_estoque)
VALUES
('Produto 1', 1, 0, 10.50, 20),
('Produto 2', 1, 5, 15.00, 15),
('Produto 3', 0, 3, 20.00, 10),
('Produto 4', 1, 1, 7.50, 30),
('Produto 5', 0, 0, 5.00, 25),
('Produto 6', 1, 2, 12.00, 8),
('Produto 7', 1, 4, 18.00, 12),
('Produto 8', 0, 1, 25.50, 5),
('Produto 9', 1, 0, 13.75, 18),
('Produto 10', 1, 6, 9.00, 22);

-- Inserção de dados na tabela orcamentos
INSERT INTO orcamentos (orc_data, status)
VALUES
('2023-05-01 10:00:00', 0),
('2023-05-01 11:00:00', 1),
('2023-05-01 12:00:00', 1),
('2023-05-01 13:00:00', 0),
('2023-05-01 14:00:00', 0),
('2023-05-01 15:00:00', 1),
('2023-05-01 16:00:00', 0),
('2023-05-01 17:00:00', 1),
('2023-05-01 18:00:00', 0),
('2023-05-01 19:00:00', 1);

-- Inserção de dados na tabela orcamentos_produtos
INSERT INTO orcamentos_produtos (op_valor, op_qtd, op_status, prd_codigo, orc_codigo)
VALUES
(10.00, 2, 1, 1, 1),
(15.00, 1, 0, 2, 1),
(20.00, 3, 1, 3, 1),
(7.50, 5, 1, 4, 1),
(5.00, 2, 0, 5, 1),
(12.00, 1, 1, 6, 1),
(18.00, 4, 0, 7, 2),
(13.75, 2, 1, 8, 2),
(25.50, 1, 1, 9, 2),
(9.00, 3, 0, 10, 2);


select * from orcamentos_produtos

CREATE TABLE produtos_atualizados(
prd_codigo int auto_increment primary key, 
prd_qtd_anterior int not null, 
prd_qtd_atualizada int not null,
prd_valor double)

CREATE TABLE produtos_em_falta (
prd_codigo int auto_increment primary key, 
prd_descricao varchar(100),
prd_status int,
prd_falta int,
prd_qtd_estoque int)

-- Faça um trigger para alterar o estoque de um produto quando ocorrer quaisquer alterações na tabela orçamentos_produtos.
-- Também irá alterar o estoque, quando um ítem na tabela orçamentos_Produtos for cancelado. Isso ocorre quando o campo Orp_Status recebe o valor 2.
DELIMITER $$
CREATE TRIGGER trigger_atualiza_estoque_update AFTER UPDATE ON orcamentos_produtos
FOR EACH ROW
BEGIN
	
	DECLARE diferenca int;
    
    IF NEW.op_qtd > OLD.op_qtd THEN
		SET diferenca = NEW.op_qtd - OLD.op_qtd;
        UPDATE produtos SET prd_qtd_estoque = prd_qtd_estoque + diferenca WHERE prd_codigo = NEW.prd_codigo;
	ELSEIF NEW.op_qtd < OLD.op_qtd THEN
		SET diferenca = OLD.op_qtd - NEW.op_qtd;
		UPDATE produtos SET prd_qtd_estoque = prd_qtd_estoque - diferenca WHERE prd_codigo = NEW.prd_codigo;
	END IF;
        
    IF NEW.op_status = 2 THEN
		UPDATE produtos SET prd_qtd_estoque = prd_qtd_estoque + OLD.op_qtd WHERE prd_codigo = OLD.prd_codigo;
	END IF;
END $$
DELIMITER $$ ;

DELIMITER $$
CREATE TRIGGER trigger_atualiza_estoque_insert AFTER INSERT ON orcamentos_produtos
FOR EACH ROW
BEGIN
	UPDATE produtos SET prd_qtd_estoque = prd_qtd_estoque + NEW.op_qtd WHERE prd_codigo = NEW.prd_codigo;
END $$
DELIMITER $$ ;

DELIMITER $$
CREATE TRIGGER trigger_atualiza_estoque_delete AFTER DELETE ON orcamentos_produtos
FOR EACH ROW
BEGIN
	UPDATE produtos SET prd_qtd_estoque = prd_qtd_estoque - NEW.op_qtd WHERE prd_codigo = NEW.prd_codigo;
END $$
DELIMITER $$ ;

-- Faça um trigger para armazenar em uma tabela chamada produtos_atualizados (prd_codigo, prd_qtd_anterior, prd_qtd_atualizada, prd_valor) quando ocorrer quaisquer alterações nos 
-- atributos da tabela produtos. No entanto, caso a alteração atribua o valor zero para o atributo prd_qtd_estoque, a tabela produtos_em_falta deverá ser alimentada com as mesmas 
-- informações da tabela produto, exceto o atributo prd_valor. Além disso, o atributo prd_status do produto atualizado deve ser modificado para NULL e o atributo orp_status de todos
-- os orcamentos_produtos desse produto deverá ser modificado também para NULL. 

trigger_atualiza_produtos_update
DELIMITER $$
CREATE TRIGGER trigger_atualiza_produtos_update AFTER UPDATE ON produtos
FOR EACH ROW
BEGIN
    DECLARE qtd_anterior INT;
    DECLARE qtd_atualizada INT;
    
    SET qtd_anterior = OLD.prd_qtd_estoque;
    SET qtd_atualizada = NEW.prd_qtd_estoque;
    
    INSERT INTO produtos_atualizados (prd_codigo, prd_qtd_anterior, prd_qtd_atualizada, prd_valor)
    VALUES (OLD.prd_codigo, qtd_anterior, qtd_atualizada, NEW.prd_valor);
    
    IF NEW.prd_qtd_estoque = 0 THEN
        INSERT INTO produtos_em_falta (prd_codigo, prd_descricao, prd_status, prd_falta, prd_qtd_estoque)
        VALUES (OLD.prd_codigo, OLD.prd_descricao, OLD.prd_status, 1, 0);
        
        UPDATE produtos SET prd_status = NULL WHERE prd_codigo = OLD.prd_codigo;
        UPDATE orcamentos_produtos SET orp_status = NULL WHERE produto_id = OLD.prd_codigo;
    END IF;
END $$;
DELIMITER ;
