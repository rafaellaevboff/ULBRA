/*
CREATE TABLE clientes
(
    id int not null auto_increment,
    nome varchar(70) not null,
    id int not null,
    historico varchar,
    whats varchar(17),
    PRIMARY KEY (id) -- DEFINE A CHAVE PRIMÁRIA NO FINAL
);
*/

-- qual a diferença entre CHAR(N) e VARCHAR(N)
/*
    termo char(10)
    termo_1 varchar(10) -- dentro do parenteses delimito o limite que a pessoa pode escrever

    -- varcahr não gasta tanta memória, char iria utilizar oq sobrou como vazio e varchar não

    termo
    |||||||||| (char)
    oi||||||||
    alo|||||||
    chocol||||
    rafaevboff

    termo_1
    oi
    alo
    chocol
    rafaevboff
*/

-- criar a tebale vendas que relaciona com os clientes, um cliente tem mts vendas
--resumo da criação de clientes e vendas:
CREATE TABLE clientes
(
    id int not null primary key, -- DEFINE A CHAVE PRIMÁRIA NO INÍCIO
    nome varchar(70) not null,
    texto text,
    whats varchar(17)
);

CREATE TABLE vendas(
    id int not null auto_increment primary key,
    data_emissao date not null,
    id_cliente int not null,
    constraint faz_venda
        foreing key(id_cliente)
            references clientes(id)
);

/*
tipo de dados de tempo:

date: yyyy-mm-dd
datetime: yyyy-mm-dd hh:mm:s
time: hh:mm:ss
timeStamp: yyyy-mm-dd hh:mm:ss
*/

/*
    um produto percente a uma categoria e uma categoria tem muitos produtos
    um produto tem muitas fotos e uma foto pertence a mais de um produto

    quantas tabelas eu terei aqui?

    comandos DDL?
*/

CREATE TABLE categorias
(
    id_categoria int not null auto_increment PRIMARY KEY
    nome_categoria varchar(50) not null,
);

CREATE TABLE produtos
(
    id_produto int not null auto_increment primary key,
    nome varchar(50) not null,
    valor_produto float not null,
    quantidade int not null,
    constraint categoria_do_grupo
        foreing key(id_da_categoria)
            references cetegorias(id_categoria),
);

CREATE TABLE fotos
(
    id int null auto_increment PRIMARY KEY,
    nome varchar(50),
    data_foto datetime not null,
    url carchar(255) not null,
);

-- tabela referencia produtos e fotos
CREATE TABLE fotos_produtos
(
    id_foto int not null,
    id_produto int null,
    constraint fotos_produtos_fotos_fk
        foreing key(id_da_foto)
            references fotos(id)
    constraint fotos_produtos_produtos_fk
        foreing key(id_do_produto)
            references produtos(id)
)