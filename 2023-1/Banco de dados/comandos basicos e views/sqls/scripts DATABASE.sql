CREATE DATABASE orcamentos;

CREATE TABLE produtos
(
id int primary key auto_increment not null,
nome varchar(100) not null,
valor decimal,
saldo int
);

CREATE TABLE orcamentos
(
id int primary key not null auto_increment,
data_orcamento date,
status_orcamento varchar(20)
);

CREATE TABLE orcamento_itens
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