create database orcamentos;

create table produtos
(
id int primary key auto_increment not null,
nome varchar(100) not null,
valor decimal,
saldo int
);

create table orcamentos
(
id int primary key not null auto_increment,
data_orcamento date,
status_orcamento varchar(20)
);

create table orcamento_itens
(
id int primary key not null auto_increment,
 valor_unit decimal,
 quantidade int,
 valor_total_item decimal(10,2) AS (valor_unit * quantidade),
 
 id_prod int not null,
  constraint orcamento_itens_tem_produto_fk
	foreign key (id_prod) references produtos(id)
    on delete restrict
    on update cascade,
 id_orc int not null,
 constraint orcamento_itens_tem_orcamento_fk
 foreign key (id_orc) references orcamentos(id)
	on delete restrict
    on update cascade
);

CREATE VIEW orcamentos_por_produto AS
SELECT p.id AS produto_id, p.nome AS produto_nome, o.id AS orcamento_id, o.data_orcamento, o.status_orcamento,
       oi.quantidade, oi.valor_unit, oi.valor_total_item
FROM produtos p
INNER JOIN orcamento_itens oi ON oi.id_prod = p.id
INNER JOIN orcamentos o ON o.id = oi.id_orc;

CREATE VIEW valor_total_produtos_orcados AS
SELECT 
  o.data_orcamento AS periodo,
  SUM(oi.valor_total_item) AS valor_total
FROM orcamentos o
  JOIN orcamento_itens oi ON oi.id_orc = o.id
  JOIN produtos p ON p.id = oi.id_prod
WHERE o.data_orcamento BETWEEN '2022-01-01' AND '2022-03-31'
GROUP BY o.data_orcamento;

CREATE VIEW produtos_computador_com_estoque AS
SELECT nome, saldo
FROM produtos
WHERE 
  nome LIKE '%Computador%'
  AND saldo > 0;

CREATE VIEW produtos_mais_orcados AS
SELECT p.nome, COUNT(*) AS num_orcamentos
FROM produtos p
  JOIN orcamento_itens oi ON oi.id_prod = p.id
  JOIN orcamentos o ON o.id = oi.id_orc
WHERE 
  oi.valor_unit > 500.00
  AND oi.quantidade <= p.saldo -- produtos com saldo em estoque
  AND MONTH(o.data_orcamento) = 9 AND YEAR(o.data_orcamento) = 2014 -- orçamentos no mês de setembro de 2014
GROUP BY p.id
ORDER BY num_orcamentos DESC
LIMIT 10
