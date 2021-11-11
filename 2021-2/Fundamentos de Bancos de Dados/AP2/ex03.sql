CREATE TABLE socios(
  numero int not null AUTO_INCREMENT primary key,
  nome varchar(100) not null,
  endereco varchar(100) not null,
  cod_tipo_socio int not null,
  descricao_tipo_socio varchar(100) not null
);

create table servicos(
  cod int not null AUTO_INCREMENT primary key,
  valor_pago double not null,
  descricao varchar(100) not null
);

CREATE table pedidos(
  id int not null AUTO_INCREMENT primary key,
  mes_referencia varchar(100) not null,
  cod_socio int not null,
  cod_servico int not null,
  
  CONSTRAINT servico_socio_fk
  	FOREIGN KEY (cod_socio)
  		REFERENCES socios(numero),
  
  CONSTRAINT servico_servico_fk
  	FOREIGN KEY (cod_servico)
  		REFERENCES servicos(cod)
  		on update CASCADE
  		on DELETE RESTRICT
);


insert into socios(nome,endereco,cod_tipo_socio,descricao_tipo_socio)
values("miguel","rua Barão do Rio Branco",001,"sócio corporativo"),
	  ("everton","rua cacique",0002,"sócio administrativo");
      
insert INTO servicos(valor_pago,descricao)
values(789.00,"troca de fechadura"),
	  (345.00,"instalação de tv a cabo");
      
INSERT into pedidos(mes_referencia,cod_socio,cod_servico)
values("2020-01-26",1,2),
	  ("2021-02-16",2,1);

SELECT descricao
FROM servicos
WHERE valor_pago > 500;

SELECT * FROM pedidos
WHERE mes_referencia BETWEEN '2020-01-01' AND '2020-01-31';

SELECT nome from socios
WHERE endereco like "%Barão do Rio Branco%";