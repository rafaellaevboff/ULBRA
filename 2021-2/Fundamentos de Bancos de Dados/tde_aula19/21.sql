CREATE TABLE clientes(
  id serial not null PRIMARY KEY,
  nome varchar(100) not null,
  endereco varchar(100) not null,
  telefone varchar(100) not null,
  cpf varchar(100) not null,
  cidade varchar(100)
);

CREATE TABLE carros(
  id SERIAL NOT NULL PRIMARY KEY,
  modelo varchar(100) not null, 
  cod_marca varchar(100) not null, 
  marca varchar(100) not null, 
  ano varchar(100) not null
);

CREATE TABLE alugueis(
  registro SERIAL NOT NULL PRIMARY KEY,
  data_aluguel date not null,
  data_devolucao date not null, 
  valor FLOAT NOT null,
  id_cliente int not null,
  id_carro Int not null,

  CONSTRAINT cliente_aluguel_fk
      FOREIGN key (id_cliente)
          references clientes(id),

  CONSTRAINT carro_aluguel_fk
      FOREIGN key (id_carro)
          references carros(id)
          on update cascade
          on delete RESTRICT
);

INSERT INTO clientes (nome,endereco,telefone,cpf,cidade)
	VALUES ('Lavínia Xavier Jr. Oliveira','Franco Rodovia','4653-5244','v80do9fykm2','Plano'),
    ('Víctor Batista Filho Xavier','Felícia Travessa','74806-9459','gjr57tgzl3x','Fort Lauderdale'),
    ('Morgana Melo Reis','Martins Rodovia','7844-7629','6344a0ckg0p','Virginia Beach'),
    ('Maria Luiza Barros Reis','Batista Travessa','23035-5423','bq7m2omnlzk','Harrisburg'),
    ('Isabelly Macedo Xavier','Maria Cecília Avenida','9496-1461','871akg3vyy9','Hempstead'),
    ('Felícia Barros Carvalho','Eduardo Rua','6747-6434','lk5t6j289f8','Eagan'),
    ('Fábio Albuquerque Nogueira','Albuquerque Rua','8657-7930','c1jhoxqfqwx','Milpitas'),
    ('Dra. Lorena Reis Carvalho','Santos Travessa','14572-9244','zgj07ija4bj','Naperville'),
    ('Roberta Silva Souza','João Rodovia','7358-7030','8wn53kulrjd','Davis'),
    ('Roberta Pereira Pereira','João Pedro Avenida','4187-6524','fz88pwo5vb8','West New York'),
    ('Sarah Macedo Filho Melo','Calebe Marginal','8608-9811','5mvb5spe5lg','St. Cloud'),
    ('Alessandro Batista Melo','Ofélia Marginal','57819-6343','bvz5i24q6d6','Hicksville'),
    ('Lorenzo Xavier Filho Nogueira','Fabiano Travessa','88183-8867','3x036kk3t2w','Hampton'),
    ('Fabrícia Oliveira Filho Saraiva','Moreira Marginal','4223-8372','gfpiyzt29n4','Metairie'),
    ('Roberta Xavier Xavier','Santos Travessa','8553-9742','w9wwjgdabt7','St. Peters'),
    ('Laura Oliveira Pereira','Gúbio Travessa','1866-6764','m2rv1g4z63w','Port Arthur'),
    ('Pietro Silva Melo','Alessandro Alameda','8906-2784','jb8xu3pkcu1','Homestead'),
    ('Marli Costa Filho Santos','Franco Avenida','97169-8509','ouje4ta9a5w','Costa Mesa'),
    ('Silas Albuquerque Saraiva','Moreira Avenida','4868-0259','apvmbdxscgr','Pawtucket'),
    ('Daniel Moraes Jr. Costa','Danilo Rua','4698-8239','slm3uwkcd52','Manhattan'),
    ('Alice Carvalho Neto Saraiva','Warley Marginal','10430-4641','0306k2km3ov','Carlsbad'),
    ('Antônio Silva Carvalho','Marina Travessa','7649-1024','cjg0cemw5e0','Olathe'),
    ('Murilo Pereira Saraiva','Marcela Rodovia','14617-3962','exsovc4lviw','Huntersville'),
    ('Samuel Moreira Martins','Arthur Rua', '3921-9562','11plfpbh11l','Citrus Heights'),
    ('Murilo Moraes Martins','Murilo Rua','2137-3528','ojtuyzlj6bx','Vineland'),
    ('Sr. Alessandra Martins Costa','Lorraine Rodovia','6387-5471','nei9mmzwmxq','Reston'),
    ('Cauã Souza Costa','Théo Rodovia','4835-2618','yg89euu694k','Valdosta'),
    ('Marcelo Xavier Albuquerque','Maria Helena Travessa','45037-1164','bakitj837mh','Chico'),
    ('Tertuliano Carvalho Neto Melo','Caio Avenida','3308-6336','w31dfm97v3o','Bellingham'),
    ('Bryan Reis Franco','Marli Avenida','06047-7029','mglh24i4gjb','Salem'),
    ('Sra. Noah Melo Nogueira','Carvalho Avenida','72866-5941','ipef8jz66ke','Margate');
    
INSERT INTO carros (modelo,cod_marca,marca,ano)
	VALUES ('Countach','692','Coupe','2005'),
    ('Roadster','79','Coupe','2014'),
    ('Impala','280','Crew Cab Pickup','2013'),
    ('Mercielago','841','SUV','2017'),
    ('Element','574','Wagon','2006'),
    ('Expedition','964','Extended Cab Pickup','2010'),
    ('LeBaron','369','Convertible','2000'),
    ('Model 3','94','SUV','2011'),
    ('Beetle','37','Hatchback','2018'),
    ('Grand Cherokee','738','Minivan','2017'),
    ('Colorado','179','Minivan','2013'),
    ('Charger','447','SUV','2009'),
    ('Impala','925','SUV','2007'),
    ('Fiesta','979','Sedan','2011'),
    ('Jetta','613','Wagon','2019'),
    ('2','287','Crew Cab Pickup','2019'),
    ('Fiesta','149','Passenger Van','2006'),
    ('PT Cruiser','161','Extended Cab Pickup','2002'),
    ('PT Cruiser','738','Coupe','2018'),
    ('Mercielago','235','Extended Cab Pickup','2008'),
    ('Wrangler','39','Hatchback','2001'),
    ('Camaro','617','Cargo Van','2017'),
    ('XTS','793','Cargo Van','2004'),
    ('CX-9','450','Crew Cab Pickup','2019'),
    ('Land Cruiser','853','Sedan','2016'),
    ('XTS','75','Cargo Van','2017'),
    ('Taurus','920','Minivan','2010'),
    ('Model 3','734','Cargo Van','2005'),
    ('Alpine','58','Hatchback','2015'),
    ('XC90','278','Extended Cab Pickup','2013'),
    ('LeBaron','366','Extended Cab Pickup','2017');
    
INSERT INTO alugueis (data_aluguel, data_devolucao, valor, id_cliente, id_carro)
    VALUES ('2019-08-17','2019-02-06','1601.00',2,31),
    ('2019-02-07','2019-06-26','232.00',1,30),
    ('2018-06-09','2019-10-07','115.00',3,29),
    ('2018-07-12','2019-07-06','801.00',4,28),
    ('2019-04-05','2019-03-01','406.00',5,27),
    ('2019-06-27','2018-03-29','1120.00',6,26),
    ('2019-11-27','2018-09-03','546.00',7,25),
    ('2018-02-28','2019-12-04','176.00',8,24),
    ('2019-03-07','2018-04-01','1493.00',9,23),
    ('2018-07-20','2018-06-02','706.00',10,22),
    ('2018-05-29','2018-02-03','1843.00',11,21),
    ('2019-06-19','2019-02-14','1437.00',12,20),
    ('2019-10-17','2018-07-26','447.00',13,19),
    ('2018-11-18','2018-11-10','1414.00',14,18),
    ('2018-08-02','2019-12-30','137.00',15,17),
    ('2019-02-11','2019-03-01','294.00',16,16),
    ('2019-07-22','2019-08-12','1380.00',17,15),
    ('2018-11-29','2018-07-04','915.00',18,14),
    ('2019-07-26','2019-05-02','717.00',19,13),
    ('2019-12-25','2018-05-07','970.00',20,12),
    ('2019-08-13','2018-06-10','942.00',21,11),
    ('2019-07-26','2018-01-05','1406.00',22,10),
    ('2019-08-10','2019-10-16','1150.00',23,9),
    ('2019-03-02','2019-07-19','390.00',24,8),
    ('2018-12-15','2019-07-20','91.00',25,7),
    ('2019-09-22','2018-06-25','1750.00',26,6),
    ('2019-06-16','2019-08-06','1443.00',27,5),
    ('2018-10-25','2019-10-04','598.00',28,4),
    ('2019-06-07','2018-02-18','1470.00',29,3),
    ('2018-09-21','2019-10-05','1558.00',30,2),
    ('2018-08-30','2019-06-10','528.00',31,1),
    ('2019-08-17','2019-02-06','1601.00',2,31),
    ('2019-02-07','2019-06-26','232.00',1,30),
    ('2018-06-09','2019-10-07','115.00',3,29);



--ATIVIDADES USANDO função de agregação (MAX, COUNT(2x)), joins(3x), group by(3x) e having

-- maior valor de aluguel, mostrando qual o modelo do veículo e o nome do cliente que o alugou.
SELECT  	MAX(a.valor) as maior_valor, c.modelo as modelo_carro, cl.nome
FROM    	alugueis a
            	INNER JOIN carros c
            		on c.id = a.id_carro
            	INNER JOIN clientes cl
            		on cl.id = a.id_cliente
GROUP BY	c.modelo, cl.nome
ORDER BY	maior_valor desc
LIMIT		1

-- quantos alugueis entre janeiro de 2003 até dezembro de 2021 por cliente e quais os 3 primeiros que tem mais alugueis?
SELECT		COUNT(a.registro) as quantidade_alugueis, cl.nome
FROM		alugueis a
				inner join clientes cl
                	on a.id_cliente = cl.id
where		data_aluguel between '2003-01-01' and '2021-12-31'
GROUP BY	cl.nome
ORDER BY	quantidade_alugueis DESC
LIMIT		3

-- clientes que alugaram mais de uma vez
SELECT      COUNT(a.registro) as quantidade_alugueis, cl.nome
FROM        alugueis a
                inner join clientes cl
                    on a.id_cliente = cl.id
GROUP BY    cl.nome
HAVING        count(a.registro) > 1
ORDER BY    quantidade_alugueis DESC