create table pesquisadores(
  cod int not null AUTO_INCREMENT PRIMARY key,
  nome varchar(100) not null
);

create table artigos(
  cod int not null PRIMARY key,
  titulo varchar(100) not null,
  pagina_inicial varchar(100) not null,
  pagina_final varchar(100) not null,
  cod_per int not null,
  titulo_per varchar(100) not null,
  editora varchar(100) not null,
  cod_pesquisador int not null,
  CONSTRAINT codigo_pesquisador_fk
  	FOREIGN KEY (cod_pesquisador)
  		REFERENCES pesquisadores(cod)
  		on update CASCADE
  		on delete restrict
);

insert into pesquisadores(nome)
values("joão"),
      ("cleber");
      
insert into artigos(cod,titulo,pagina_inicial,pagina_final,cod_per,titulo_per,editora,cod_pesquisador)
values(1234,"alice no pais das maravilhas","1","220",0005,"ação","saraiva",1),
      (3546,"os navegantes","1","330",0006,"suspense","carlos andrade",2);
      
SELECT * from artigos
WHERE cod=1234;

SELECT * from artigos
WHERE editora like '%saraiva%';

SELECT * from pesquisadores
WHERE nome like 'joão%';