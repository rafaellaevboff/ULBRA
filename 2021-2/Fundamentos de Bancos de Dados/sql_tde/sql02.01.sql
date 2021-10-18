CREATE TABLE instituicoes
(
  	icod int not null primary key,
  	nome varchar(100) not null
 );

CREATE TABLE projetos
(
    prcod int not null primary key,
    prnome varchar(100) not null,
    cidade varchar(100) not null,
  	icod int not null,
  
    constraint instituicoes_icod
    	foreign key(icod)
    		REFERENCES(instituicoes(icod))
);
  
CREATE TABLE fornecedores
(
  	fcod int not null primary key,
  	fnome varchar(100) not null,
  	fstatus varchar(100) not null,
  	fcidade varchar(100) not null
);
  
CREATE TABLE pecas
(
    pcod int not null primary key,
    pnome varchar(100) not null,
    cor varchar(100) not null,
    peso int not null,
    cidade varchar(100) not null
);
  
CREATE TABLE fornecimentos
(
    quantidade int not null,
    fcod int not null,
    pcod int not null,
    prcod int not null,
      
  	constraint fornecedores_fcod_fk
    	foreign key(fcod)
    		REFERENCES(fornecedores(fcod)),
      
  	constraint pecas_pcod_fk
    	foreign key(pcod)
    		REFERENCES(pecas(pcod)),
  
      constraint projetos_prcod_fk
    	foreign key(prcod)
    		REFERENCES(projetos(prcod))
);