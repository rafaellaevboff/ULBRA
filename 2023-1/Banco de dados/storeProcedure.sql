CREATE DATABASE livraria;

CREATE TABLE clientes (
  id INT PRIMARY KEY auto_increment not null,
  nome VARCHAR(255)
);

CREATE TABLE livros (
  id INT PRIMARY KEY auto_increment not null,
  titulo VARCHAR(255),
  valor_unit DECIMAL(10,2)
);

ALTER TABLE livros
ADD data_publicacao datetime;

ALTER TABLE livros
ADD id_editora int;

ALTER TABLE livros
ADD constraint livro_tem_editora_fk
foreign key (id_editora)
REFERENCES editora (id)
ON DELETE RESTRICT
ON UPDATE CASCADE;

ALTER TABLE livros
DROP COLUMN id_editora;

ALTER TABLE livros
DROP CONSTRAINT livro_tem_editora_fk;

CREATE TABLE editoras (
  id INT PRIMARY KEY auto_increment not null,
  nome VARCHAR(255)
);

INSERT INTO editora (nome) VALUES
('Editora A'),
('Editora B'),
('Editora C'),
('Editora D'),
('Editora E');

CREATE TABLE autores (
  id INT PRIMARY KEY auto_increment not null,
  nome VARCHAR(255)
);

ALTER TABLE autores
ADD cpf varchar(11);

UPDATE autores
SET cpf = '12345678915'
WHERE autores.id = 5;


CREATE TABLE autores_livros (
  id_autor INT,
  id_livro INT,
  PRIMARY KEY (id_autor, id_livro),
  
  CONSTRAINT autoreslivros_tem_autores_fk
	FOREIGN KEY (id_autor) REFERENCES Autores(id)
		on delete restrict
		on update cascade,
        
  CONSTRAINT autoreslivros_tem_livros_fk
	FOREIGN KEY (id_livro) REFERENCES Livros(id)
		on delete restrict
		on update cascade
);

CREATE TABLE vendas (
  id INT PRIMARY KEY auto_increment not null,
  dataVendas DATE,
  id_cliente INT,
  
  CONSTRAINT vendas_tem_cliente_fk
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
		on delete restrict
		on update cascade
);

CREATE TABLE vendas_livros (
  id INT PRIMARY KEY auto_increment not null,
  id_livro INT,
  qtd INT,
  valor_unit DECIMAL(10,2),
  
  CONSTRAINT vendaslivros_tem_livro_fk
	FOREIGN KEY (id_livro) REFERENCES Livros(id)
		on delete restrict
		on update cascade
);

CREATE TABLE editoras_livros(
	id_livro int,
    id_editora int,
    
    CONSTRAINT editoraslivros_tem_livro_fk
	FOREIGN KEY (id_livro) REFERENCES livros(id)
		on delete restrict
		on update cascade,
        
	CONSTRAINT vendaslivros_tem_editora_fk
	FOREIGN KEY (id_editora) REFERENCES editora(id)
		on delete restrict
		on update cascade
);

INSERT INTO editoras_livros (id_livro, id_editora)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

-- Populando a tabela Clientes
INSERT INTO clientes (id, nome)
VALUES
  (1, 'João'),
  (2, 'Maria'),
  (3, 'Pedro'),
  (4, 'Ana'),
  (5, 'Luiza');

-- Populando a tabela Livros
INSERT INTO livros (id, titulo, valor_unit)
VALUES
  (1, 'Dom Casmurro', 29.90),
  (2, 'O Pequeno Príncipe', 19.99),
  (3, 'O Senhor dos Anéis', 49.90),
  (4, 'Orgulho e Preconceito', 27.50),
  (5, 'Memórias Póstumas de Brás Cubas', 33.75);

-- Populando a tabela Autores
INSERT INTO autores (id, nome)
VALUES
  (1, 'Machado de Assis'),
  (2, 'Antoine de Saint-Exupéry'),
  (3, 'J.R.R. Tolkien'),
  (4, 'Jane Austen'),
  (5, 'Clarice Lispector');

-- Populando a tabela Autores_livros
INSERT INTO autores_livros (id_autor, id_livro)
VALUES
  (1, 1),
  (1, 5),
  (2, 2),
  (3, 3),
  (4, 4);

-- Populando a tabela Vendas
INSERT INTO vendas (id, dataVendas, id_cliente)
VALUES
  (1, '2022-01-01', 1),
  (2, '2022-02-05', 3),
  (3, '2022-02-10', 2),
  (4, '2022-03-15', 4),
  (5, '2022-03-25', 5);

-- Populando a tabela Vendas_livros
INSERT INTO vendas_livros (id, id_livro, qtd, valor_unit)
VALUES
  (1, 1, 2, 29.90),
  (2, 3, 1, 49.90),
  (3, 2, 3, 19.99),
  (4, 5, 1, 33.75),
  (5, 4, 2, 27.50);

-- VIEWS
CREATE VIEW livros_mais_vendidos AS 
	SELECT 	l.titulo as titulo_livro, 
			a.nome as nome_autor,
			l.valor_unit as valor_livro, 
			SUM(vl.qtd) as qtd_vendida
	FROM livros l
	LEFT JOIN vendas_livros vl ON vl.id_livro = l.id
	INNER JOIN autores_livros al ON al.id_livro = l.id
	INNER JOIN autores a ON a.id = al.id_autor
	GROUP BY l.id, a.nome
    ORDER BY qtd_vendida DESC;

CREATE VIEW autores_sem_vendas AS
  SELECT a.nome
  FROM autores a
  LEFT JOIN autores_livros al ON a.id = al.id_autor
  LEFT JOIN vendas_livros vl ON al.id_livro = vl.id_livro
  WHERE vl.id IS NULL;

CREATE VIEW livros_vendidos_mais_de_um_exemplar AS
	SELECT l.titulo, a.nome as autor, SUM(vl.qtd) AS qtd_vendida
	FROM livros l
	INNER JOIN autores_livros al ON al.id_livro = l.id
	INNER JOIN autores a ON al.id_autor = a.id
	INNER JOIN vendas_livros vl ON l.id = vl.id_livro
	GROUP BY l.id, a.nome
	HAVING SUM(vl.qtd) > 1
	ORDER BY qtd_vendida DESC;
    
-- STORE PROCEDURES

-- Escreva uma SP que receba, como parâmetro, o CPF de um autor e retorne a quantidade de livros escrito pelo mesmo.
DELIMITER $$
CREATE PROCEDURE livros_escritos_autor(p_cpf varchar(11))
BEGIN
	SELECT a.nome as autor, COUNT(l.id) as quantidade_livros
    FROM autores_livros al
		INNER JOIN autores a ON a.id = al.id_autor
        INNER JOIN livros l ON l.id = al.id_livro
        WHERE a.cpf = p_cpf
        GROUP BY a.id;
END$$
DELIMITER ;

call livraria.livros_escritos_autor('12345678911');
call livraria.livros_escritos_autor('12345678912');
call livraria.livros_escritos_autor('12345678913');
select * from autores;



-- Crie uma SP que receba, como um parâmetro, a data de publicação de um livro e seu código.
-- O procedimento deve atualizar a tabela de livros, especificando a data de lançamento para o livro em questão.
DELIMITER $$
CREATE PROCEDURE atualiza_tabela_livro( p_codigo varchar(5), p_data_publicacao datetime)
BEGIN
	UPDATE livros
    SET data_publicacao = p_data_publicacao
    WHERE id = p_codigo;
END$$
DELIMITER ;

call livraria.atualiza_tabela_livro('2', '2022-05-13');
call livraria.atualiza_tabela_livro('3', '2022-05-13 13:30:50');
select * from livros


-- a) Inserir uma linha na tabela de livros
DELIMITER $$
CREATE PROCEDURE add_livro(p_titulo varchar(255), p_valor_unit DECIMAL(10,2), p_data_publicacao datetime)
BEGIN
declare contem int;
set contem = ( select count(livros.titulo) from livros where livros.titulo = p_titulo);
	if contem = 0 then
		INSERT INTO livros(titulo, valor_unit, data_publicacao)
		VALUES (p_titulo, p_valor_unit, p_data_publicacao);
	else 
		select * from livros where livros.titulo = p_titulo;
	end if;
END$$
DELIMITER ;
call livraria.add_livro('Emma', 30.50, '2017-06-01 15:20:25');

-- b) Excluir uma linha da tabela de livros
DELIMITER $$ 
CREATE PROCEDURE exclui_livro(p_id int)
BEGIN	
	DELETE FROM livros
	WHERE id = p_id;
END$$
DELIMITER ;
call livraria.exclui_livro(6);


-- c) Atualizar valores na tabela de livros
DELIMITER $$
CREATE PROCEDURE atualiza_livro(p_id int, p_titulo varchar(255), p_valor_unit DECIMAL(10,2), p_data_publicacao datetime)
BEGIN
	UPDATE livros l
    SET titulo = p_titulo, valor_unit = p_valor_unit, data_publicacao = p_data_publicacao
    WHERE id = p_id;
END$$
DELIMITER ;
call livraria.atualiza_livro(7, 'EMMA 2', 25.90, '2017-06-01');

-- Crie uma SP que aumente ou diminua o valor dos preços dos livros de uma editora específica. O aumento pode ser em percentual ou em valor.
DELIMITER $$
CREATE procedure aumentar_preco_livros_editora(
  IN editora VARCHAR(255),
  IN modo VARCHAR(10),
  IN valor_aumento DECIMAL(10,2),
  IN percentual_aumento DECIMAL(10,2)
)
BEGIN
  IF modo = 'valor' THEN
    -- Aumenta o valor dos livros da editora em um valor fixo
    UPDATE livros SET valor_unit = valor_unit + valor_aumento
    WHERE id IN (SELECT id_livro FROM editoras_livros WHERE id_editora = editora);
  ELSEIF modo = 'percentual' THEN
    -- Aumenta o valor dos livros da editora em um percentual
    UPDATE livros SET valor_unit = valor_unit * (1 + (percentual_aumento / 100))
    WHERE id IN (SELECT id_livro FROM editoras_livros WHERE id_editora = editora);
  END IF;
  
END$$
DELIMITER ;
