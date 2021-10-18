CREATE table fornecedores
(
  codigo int not null auto_increment primary key,
  nome varchar(80) not null
);

insert into fornecedores
values('134', 'Maria');

insert into fornecedores
values('567', 'Maria');

delete from fornecedores where codigo = 567

insert into fornecedores
values('234', 'Sergio')

insert into fornecedores
values('890', 'Tiago');

CREATE TABLE produtos
(
   codigo int not null auto_increment primary key,
   descricao varchar(200) not null,
   data_cadastro date not null,
   valor_unitario float not null
);

INSERT into produtos(codigo, descricao, data_cadastro, valor_unitario)
values ('123', 'calça jeans', '2021-08-21', '80.00');

INSERT into produtos(codigo, descricao, data_cadastro, valor_unitario)
values ('456', 'vestido', '2021-05-21', '50.00');

INSERT into produtos(codigo, descricao, data_cadastro, valor_unitario)
values ('789', 'blazer', '2021-04-21', '100.00');

INSERT into produtos(codigo, descricao, data_cadastro, valor_unitario)
values ('101', 'blazer', '2021-04-05', '100.00');

INSERT into produtos(codigo, descricao, data_cadastro, valor_unitario)
values ('102', 'sapato social', '2021-09-27', '150.00');

delete from produtos where codigo = 101

update produtos
set valor_unitario = '60.00'
where codigo = '456'

SELECT * FROM produtos;

select *, valor_unitario+((valor_unitario*10)/100) as valor_com_acrescimo
from produtos

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

INSERT into pedidos(quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
values ('2','160.00','2021-03-06', '234', '123');

INSERT into pedidos(quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
values ('3','300.00','2021-08-17', '134', '789');

INSERT into pedidos(quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
values ('2','300.00','2021-12-04', '890', '102');

INSERT into pedidos(quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
values ('5','400.00','2021-10-16', '234', '123');

INSERT into pedidos(quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
values ('4','200.00','2021-09-20', '890', '456');

SELECT * FROM pedidos;