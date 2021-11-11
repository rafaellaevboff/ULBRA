CREATE TABLE clientes(
  id int not null AUTO_INCREMENT PRIMARY KEY,
  nome varchar(100) not null,
  endereço varchar(100) not null,
  telefone varchar(100) not null,
  cpf varchar(100) not null,
  cidade varchar(100)
);

CREATE TABLE carros(
  id int not null AUTO_INCREMENT PRIMARY KEY,
  placa varchar(100) not null, 
  modelo varchar(100) not null, 
  cod_marca varchar(100) not null, 
  marca varchar(100) not null, 
  ano varchar(100) not null
);

CREATE TABLE alugueis(
  registro int not null AUTO_INCREMENT PRIMARY KEY,
  data_aluguel date not null,
  data_devolução date not null, 
  valor double NOT null,
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


INSERT into clientes(nome,endereço,telefone,cpf)
VALUES("joão gomes", "rua 2, 3222","9997776654","99034567829"),
	  ("maria silva", "av. general da rocha, 3222","9937579654","99068766789");
      
INSERT into carros(placa,modelo,cod_marca,marca,ano)
VALUES("yip0g53","chevette","0005","chevrolett","1994"),
	  ("uar8yp2","bmw m3","0006","bmw","2011");
      
insert into alugueis(data_aluguel,data_devolução,valor,id_cliente,id_carro)
values("2021-09-12","2021-10-22",465.00,1,2),
 	   ("2021-12-20","2022-01-10",668.00,2,1);
       

SELECT * FROM alugueis
WHERE data_aluguel BETWEEN '2021-09-01' AND '2021-09-30';
  
SELECT * from clientes
WHERE nome like '%silva%';
  
select * , valor+((valor*20)/100) as valor_com_acrescimo
from alugueis;     