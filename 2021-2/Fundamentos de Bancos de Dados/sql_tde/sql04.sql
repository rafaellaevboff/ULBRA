-- revisão do conteúdo
-- correção do exercício da última aula 

CREATE table fornecedores
(
  codigo int not null auto_increment primary key,
  nome varchar(80) not null
);

 -- inserir linhas em uma tabela
insert into fornecedores(codigo, nome)
VALUES
('134', 'Maria'),
('567', 'Maria'),
('234', 'Sergio'),
('890', 'Tiago');

 -- deletar uma linha
delete from fornecedores
where codigo = 567

 -- visualizar a tabela
SELECT * FROM fornecedores;


CREATE TABLE produtos
(
   codigo int not null auto_increment primary key,
   descricao varchar(200) not null,
   data_cadastro date not null,
   valor_unitario float not null
);

 -- inserir linhas em uma tabela
INSERT into produtos(codigo, descricao, data_cadastro, valor_unitario)
values
('123', 'calça jeans', '2021-08-21', '80.00'),
('456', 'vestido', '2021-05-21', '50.00'),
('789', 'blazer', '2021-04-21', '100.00'),
('101', 'blazer', '2021-04-05', '100.00'),
('102', 'sapato social', '2021-09-27', '150.00');

 -- deletar uma linha
delete from produtos
where codigo = 101

 -- mudar um elemento em uma linha na tabela
update produtos
set valor_unitario = '60.00'
where codigo = '456'

 -- visualizar a tabela
SELECT * FROM produtos;

 -- criar uma nova coluna, com uma conta de aumento de preço. Não existe no SGBD em si, ela existe em tempo de exibição
select *, valor_unitario+((valor_unitario*10)/100) as valor_com_acrescimo
from produtos
 -- alterar o valor quando o valor unitario for maior que 10
Select *, valor_unitario *1.10 AS novo_valor
FROM produtos 
where valor_unitario > 10

 -- procurar linhas que tenham a letra 'e'
SELECT *
FROM produtos
WHERE descricao LIKE '%e%'
--Quando é palavra inteira não precisa dos %%:
SELECT *
FROM produtos
WHERE descricao LIKE 'blazer'

CREATE table categorias
(
    codigo int not null auto_increment primary key,
    nome varchar(80) not null,
    codigo_produtos int not null,
    
    constraint categorias_produtos_fk
      foreign key (codigo_produtos)
          references produtos(codigo)
);


CREATE TABLE pedidos
(
    quantidade int not null,
    valor_unitario float not null,
    data date not null,
    codigo_fornecedores int not null,
    codigo_produtos int not null,
    
    constraint pedidos_fornecedores_fk
        foreign key (codigo_fornecedores)
            references fornecedores(codigo),
    
    constraint pedidos_produtos_fk
        foreign key (codigo_produtos)
            references produtos(codigo)
);

 -- inserir linhas em uma tabela
INSERT into pedidos(quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
values 
('2','160.00','2021-03-06', '234', '123'),
('3','300.00','2021-08-17', '134', '789'),
('2','300.00','2021-12-04', '890', '102'),
('5','400.00','2021-10-16', '234', '123'),
('4','200.00','2021-09-20', '890', '456');

 -- visualizar a tabela
SELECT * FROM pedidos;

-- Consulte os pedidos que foram feitos no mês de outubro
select *
from pedidos
where data_pedido>='2021-10-01' and  data_pedido<='2021-10-31'

-- otimizar o comando a nível de desenvolvedor, pode demorar um pouco mais, por isso não é legal usar em banco de dados maiores:
select *
from pedidos
where data_pedido between '2021-10-01' and data_pedido<='2021-10-31'

--Extrai um "pedaço" de uma data
select *
from pedidos
where MONTH(data_pedido) = 10

--retorna TODOS os meses de agosto, não importando o ano
select *
from pedidos
where MONTH(data_pedido) = MONTH('2021-10-09')
--pode ser MONTH, DAY OU YEAR ali

-- mostrar datas em forma de tabela:
SELECT day(CURRENT_DATE) AS dia, month(CURRENT_DATE) AS mes, YEAR(CURRENT_DATE) AS ano;

-- quem é executado primeiro no banco de dados?
-- 3 - select (sempre é a última a executar)
-- 1 - from
-- 2 - where

SELECT COUNT(valor_unitario) AS quantos_temos
FROM produtos

SELECT SUM(valor_unitario) AS soma_dos_termos
FROM produtos

SELECT AVG(valor_unitario) AS media_de_preco
FROM produtos

SELECT MIN(valor_unitario) AS valor_minimo
FROM produtos

SELECT MAX(valor_unitario) AS valor_maximo
FROM produtos

SELECT MAX(codigo) + 1 AS auto_increment_new
FROM produtos

-- soma total dos pedidos que foram feitos em dezembro de 2020... fornecedores
SELECT MAX(valor_pedido) AS total
FROM pedidos
WHERE data_pedido>= '2020-12-01' AND
    data_pedido<='2020-12-31'