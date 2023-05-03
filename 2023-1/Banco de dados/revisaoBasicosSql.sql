-- EMPRESA
-- cria tabelas
create database empresa_db;

create table cidade
(
	codcid int auto_increment primary key,
    nome varchar(100) not null,
    uf char(2) not null
);

create table produto
(
	codprod int auto_increment primary key,
    descricao varchar(120) not null,
    preco integer not null,
    nomecategoria varchar(80) not null,
    descricaocategoria varchar(120)
);

create table filial
(
	codfilial int auto_increment primary key,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    cidade_codcid int not null,
    constraint filial_tem_cidade_fk
		foreign key (cidade_codcid) references cidade(codcid)
        on delete restrict
        on update cascade
);

create table empregado
(
	codemp int auto_increment primary key,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    rg varchar(15) not null,
    cpf char(11) not null,
    salario integer not null,
    cidade_codcid int not null,
    constraint empregado_tem_cidade_fk
		foreign key (cidade_codcid) references cidade(codcid)
        on delete restrict
        on update cascade,
	filial_codfilial int not null,
    constraint empregado_tem_filial_fk
		foreign key (filial_codfilial) references filial(codfilial)
        on delete restrict
        on update cascade
);

create table vende
(
	produto_codprod int not null,
    constraint vende_tem_produto_fk
		foreign key (produto_codprod) references produto(codprod)
        on delete restrict
        on update cascade,
	filial_codfilial int not null,
    constraint vende_tem_filial_fk
		foreign key (filial_codfilial) references filial(codfilial)
        on delete restrict
        on update cascade
);

-- insere dados nas tabelas
insert into cidade(nome, uf)
	values('Torres', 'RS'),
			('Campinas','SP'),
            ('Tubarão','SC');
            
select * from cidade;

insert into produto(descricao, preco, nomecategoria, descricaocategoria)
	values('Capa de chuva Motoqueiro', 150, 'Acessórios Motoqueiros', 'Produtos usados na locomoção  em motocicletas'),
    ('Capacete Motoqueiro', 200, 'Acessórios Motoqueiros', 'Produtos usados na locomoção em motocicletas'),
    ('Buzina bicicleta', 50, 'Acessórios p0ara ciclistas', 'Produtos usados na locomoção em bicicletas');
    
select * from produto;

insert into filial(nome, endereco, cidade_codcid)
	values('Litoral Motos', 'Rua aaaa', 1),
    ('BikeShop', 'Rua yyyy', 2),
    ('Acessórios Bike&Moto', 'Rua xxxxx', 3);
    
select * from filial;

insert into empregado(nome, endereco, rg, cpf, salario, cidade_codcid, filial_codfilial)
	values('Anderson', 'Rua xyz', '123654789632', '12365478969', 2000, 2, 2),
	('Betina', 'Rua xyz', '123654789632', '12365478969', 2000, 2, 2),
    ('Bruna', 'Rua abc', '1234569870', '52639574102', 2300, 1, 1),
    ('Carlos', 'Rua abc', '1234569870', '52639574102', 1000, 1, 1),
    ('Ana', 'Rua abc', '1234569870', '52639574102', 400, 1, 1),
    ('Felipe', 'Rua 123', '6523987415', '52698732105', 2500, 3, 3),
    ('Pedro', 'Rua 123', '6523987415', '52698732105', 2500, 3, 3);
    
select * from empregado;

insert into vende(produto_codprod, filial_codfilial)
	values(1,2),
    (3,1),
    (2,3);
    
select * from vende;

-- lista valor do produto mais caro
select max(preco) 
from produto;

-- média dos preços dos produtos
select SUM(preco)
from produto;

-- listar o nome dos produtos vendido pela filial f3 (joins)
select p.descricao
from produto p
inner join vende v
on p.codprod = v.produto_codprod
inner join filial f
on f.codfilial = v.filial_codfilial
where v.filial_codfilial = 3;

-- listar os nomes e números de RG dos funcionários que moram no RS e tem salário superior a 500 (joins)
select e.nome, e.rg
from empregado e
inner join cidade c
on c.codcid = e.cidade_codcid
where c.UF = 'RS' and e.salario > 500;


-- VENDA DE LIVROS
-- cria tabelas
create database vendalivros_db;

create table cidade
(
	codcid int auto_increment primary key,
    nome varchar(100) not null,
    uf char(2) not null
);

create table categoria
(
	codcat int auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(100) not null
);

create table autor
(
	codautor int auto_increment primary key,
    nome varchar(100) not null,
    cidade_codcid int not null,
    constraint autor_tem_cidade_fk
		foreign key (cidade_codcid) references cidade(codcid)
        on delete restrict
        on update cascade
);

create table cliente
(
	codcliente int auto_increment primary key,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    cidade_codcid int not null,
    constraint cliente_tem_cidade_fk
		foreign key (cidade_codcid) references cidade(codcid)
        on delete restrict
        on update cascade
);

create table livro
(
	codlivro int auto_increment primary key,
    titulo varchar(100) not null,
    nfolhas integer not null,
    editora varchar(100) not null,
    valor integer,
    
    autor_codautor int not null,
    constraint livro_tem_autor_fk
		foreign key (autor_codautor) references autor(codautor)
        on delete restrict
        on update cascade,
        
	categoria_codcat int not null,
    constraint livro_tem_categoria_fk
		foreign key (categoria_codcat) references categoria(codcat)
        on delete cascade
        on update cascade
);

create table venda
(
	quantidade integer not null,
    dia date not null,
    
    livro_codlivro int not null,
    constraint venda_tem_livro_fk
		foreign key (livro_codlivro) references livro(codlivro)
        on delete restrict
        on update cascade,
        
	cliente_codcliente int not null,
    constraint venda_tem_cliente_fk
		foreign key (cliente_codcliente) references cliente(codcliente)
        on delete restrict
        on update cascade
);


-- popula tabelas
insert into cidade(nome, uf)
	values('Torres', 'RS'),
			('Campinas','SP'),
            ('Tubarão','SC');
select * from cidade;

insert into categoria(nome, descricao)
	values('Banco de Dados','Livro de estudos'),
			('Suspense','as emoções despertadas variam entre ansiedade, tensão, medo e agitação'),
            ('Romance','narrativa longa, escrita em prosa');
select * from categoria;

insert into autor(nome, cidade_codcid)
	values('Beatriz',1),
		('Marcos',2),
		('Lorenzo',3);
select * from autor;

insert into cliente(nome, endereco, cidade_codcid)
	values('Pedro','Rua asdsf',1),
		('Ana','Rua zxcv',2),
		('Camila','Rua abcd',3);
select * from cliente;

insert into livro(titulo, nfolhas, editora, valor, autor_codautor, categoria_codcat)
	values('Banco de dados powerful',300,'Saraiva',30,3,1),
		('Livro 2 Tarde',215,'Globo Livros',25,2,2),
		('Livro 3 Noite',280,'Intrínseca',27,1,3);
select * from livro;

insert into venda(quantidade, dia, livro_codlivro, cliente_codcliente)
	values(2,'2023-05-02',4,2),
			(3,'2022-06-01',5,1),
            (1,'2022-01-02',6,3);
select * from venda;


-- exercícios
-- número total de vendas realizadas
select count(*) from venda;

-- Listar os títulos e valores dos livros da categoria “banco de Dados’. Mostra também o nome da categoria. 
select l.titulo, l.valor, c.nome
from livro l
inner join categoria c
on l.categoria_codcat = c.codcat
where c.nome like '%Suspense%';

-- Listar os  títulos e nome dos autores dos livros que custam mais que R$ 300,00.
SELECT livros.titulo, autores.nome
FROM livros
JOIN autores ON livros.codautor = autores.codautor
WHERE livros.preco > 300

-- Listar os nomes dos clientes juntamente com o nome da cidade onde moram e UF.
SELECT clientes.nome, cidades.nome AS cidade, cidades.uf
FROM clientes
JOIN cidades ON clientes.codcidade = cidades.codcidade

-- Listar os nomes dos clientes juntamente com os nomes de todos os livros comprados por ele.
SELECT clientes.nome, livros.titulo
FROM clientes
JOIN pedidos ON clientes.codcliente = pedidos.codcliente
JOIN itens_pedido ON pedidos.codpedido = itens_pedido.codpedido
JOIN livros ON itens_pedido.codlivro = livros.codlivro

-- Listar o código do livro, o tilulo, o nome do autor, dos livros que foram vendidos no mês de março de 2021. (join)
SELECT livros.codlivro, livros.titulo, autores.nome AS nome_autor
FROM vendas
JOIN itens_venda ON vendas.codvenda = itens_venda.codvenda
JOIN livros ON itens_venda.codlivro = livros.codlivro
JOIN autores ON livros.codautor = autores.codautor
WHERE MONTH(vendas.data) = 3 AND YEAR(vendas.data) = 2021

-- Listar o título e o autor dos 5 livros mais vendidos do mês de janeiro.
SELECT livros.titulo, autores.nome AS nome_autor, SUM(itens_venda.quantidade) AS total_vendido
FROM vendas
JOIN itens_venda ON vendas.codvenda = itens_venda.codvenda
JOIN livros ON itens_venda.codlivro = livros.codlivro
JOIN autores ON livros.codautor = autores.codautor
WHERE MONTH(vendas.data) = 1 AND YEAR(vendas.data) = YEAR(NOW())
GROUP BY livros.codlivro
ORDER BY total_vendido DESC
LIMIT 5

-- Mostrar o nome do cliente que comprou o livro com o título ‘Banco de dados powerful’).
select c.nome
from cliente c
inner join venda v
on c.codcliente = v.cliente_codcliente
inner join livro l
on l.codlivro = v.livro_codlivro
where l.titulo like '%Banco de dados powerful%';
