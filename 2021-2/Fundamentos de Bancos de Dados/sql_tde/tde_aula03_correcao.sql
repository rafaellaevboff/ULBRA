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

 -- criar uma nova coluna, com uma conta de aumento de preço
select *, valor_unitario+((valor_unitario*10)/100) as valor_com_acrescimo
from produtos
 -- alterar o valor quando o valor unitario for maior que 10
Select *, valor_unitario *1.10 AS novo_valor
FROM produtos 
where valor_unitario > 10

 -- procurar linhas que tenham a palavra blazer
SELECT * from produtos
WHERE descricao like '%%blazer%%'


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