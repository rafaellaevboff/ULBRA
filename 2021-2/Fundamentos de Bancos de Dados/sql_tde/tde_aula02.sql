CREATE table fornecedores
(
  codigo int not null,
  nome varchar(80) not null
);
  
ALTER TABLE fornecedores
ADD COLUMN data_ultima_compra date not null;
    
DROP TABLE fornecedores

CREATE TABLE produtos
(
   codigo int not null,
   descricao varchar(200) not null,
   data_cadastro date not null,
   valor_unitario float not null
);
  
ALTER TABLE produtos
DROP COLUMN data_cadastro
  
CREATE table categorias
(
    codigo int not null,
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
    
ALTER TABLE pedidos
    RENAME column data TO data_pedido
     
ALTER TABLE pedidos
    ADD COLUMN numero_pedido varchar not null;