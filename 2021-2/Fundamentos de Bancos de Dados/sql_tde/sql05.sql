CREATE TABLE cidades(
    codcid int not null auto_increment primary key,
    nome varchar(100) not null,
    uf varchar(2) not null
)

INSERT into cidades(codcid, nome, uf)
values
('1', 'Porto Alegre', 'RS'),
('2', 'Natal', 'RN'),
('3', 'São Paulo', 'SP');

select *
from cidades
where uf = 'RS'

CREATE TABLE medicos(
    codmed int not null auto_increment primary key,
    nome varchar(80) not null,
    endereco varchar(100) not null,
    telefone varchar(13) not null,
    crm varchar(7) not null,
    cpf varchar(11) not null,
    codcid_medicos int not null,

    constraint codcid_cidade_medicos_fk
      foreign key (codcid_medicos)
          references cidades(codcid)
)

INSERT into medicos(codmed, nome, endereco, telefone, crm, cpf, codcid_medicos)
values
('1', 'Ana Beatriz', 'Rua xxx, nºxx', '51 yxxxxxxxx','Axxxxxx', 'xxxxxxxxxxx', '1'),
('2', 'Tiago', 'Rua yyy, nºyy', '51 yyyyyyyyy','Ayyyyyy','yyyyyyyyyyy','2'),
('3', 'Débora', 'Rua ccc, nºcc', '51 ccccccccc','Acccccc', 'ccccccccccc','3');

select nome, telefone
from medicos

CREATE TABLE pacientes(
    codpac int not null auto_increment primary key,
    nome varchar(80) not null,
    endereco varchar(100) not null,
    telefone varchar(13) not null,
    codcid_pacientes int not null,

    constraint codcid_cidade_pacientes_fk
      foreign key (codcid_pacientes)
          references cidades(codcid)
)

INSERT into pacientes(codpac, nome, endereco, telefone, codcid_pacientes)
values
('1', 'Pedro', 'Rua xxx, nºxx', '51 yxxxxxxxx','1'),
('2', 'Roberta', 'Rua yyy, nºyy', '51 yyyyyyyyy','2'),
('3', 'Alice', 'Rua ccc, nºcc', '51 ccccccccc','3');

CREATE TABLE medicamentos(
    codmedicamento int not null auto_increment PRIMARY key,
    nome varchar(80) not null,
    composicao varchar(150) not null,
    preco int not null
)

INSERT into medicamentos(codmedicamento, nome, composicao, preco)
values
('1', 'Paracetamol', 'xxxxxxxx', '20.50'),
('2', 'Ibuprofeno', 'yyyyyyyyy', '21.10'),
('3', 'Buscopan', 'cccccccc','25.25');

select nome, preco
from medicamentos

SELECT AVG(preco) AS media_de_preco_medicamentos
FROM medicamentos

SELECT MAX(preco) AS medicamento_mais_caro
FROM medicamentos

CREATE TABLE consultas(
    codconsulta int not null auto_increment primary key,
    data_hora datetime not null,
    codmed_consultas int not null,
    codpac_consultas int not null,

    constraint codmed_medicos_consultas_fk
      foreign key (codmed_consultas)
          references consultas(codconsulta),

    constraint codpac_pacientes_consultas_fk
      foreign key (codpac_consultas)
          references pacientes(codpac)
)

INSERT into consultas(codconsulta, data_hora, codmed_consultas, codpac_consultas)
values
('1', '2021-05-16 15:34:05', '1', '1'),
('2', '2021-08-10 10:10:15', '2', '2'),
('3', '2021-10-29 07:45:40', '3', '3');

SELECT COUNT(codconsulta) AS quantas_consultas
FROM consultas

CREATE TABLE prescricao(
  	id_prescricao int not null auto_increment primary key,
    posologia varchar(100) not null,
    codconsulta_prescricao int not null,
    codmedicamento_prescricao int not null,
    
    constraint codconsulta_consulta_prescricao_fk
      foreign key (codconsulta_prescricao)
          references consultas(codconsulta),

    constraint codmedicamento_medicamento_prescricao_fk
      foreign key (codmedicamento_prescricao)
          references medicamentos(codmedicamento)
)

INSERT into prescricao(id_prescricao, posologia, codconsulta_prescricao, codmedicamento_prescricao)
values
('1', 'Paracetamol 24 mg a cada 8 horas', '1', '1'),
('2', 'Ibuprofeno 24 mg a cada 8 horas', '2', '2'),
('3', 'Buscopan 24 mg a cada 8 horas', '3','3');