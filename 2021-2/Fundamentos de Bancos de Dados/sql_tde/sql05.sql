CREATE TABLE cidades(
    codcid int not null auto_increment primary key,
    nome varchar(100) not null,
    uf varchar(2) not null
)

INSERT into cidades(codcid, nome, uf)
values
(1, 'Porto Alegre', 'RS'),
(2, 'Natal', 'RN'),
(3, 'São Paulo', 'SP');

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
(1, 'Ana Beatriz', 'Rua xxx, nºxx', '51 yxxxxxxxx','Axxxxxx', 'xxxxxxxxxxx', 1),
(2, 'Tiago', 'Rua yyy, nºyy', '51 yyyyyyyyy','Ayyyyyy','yyyyyyyyyyy', 2),
(3, 'Débora', 'Rua ccc, nºcc', '51 ccccccccc','Acccccc', 'ccccccccccc', 3);

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
(1, 'Pedro', 'Rua xxx, nºxx', '51 yxxxxxxxx', 1),
(2, 'Roberta', 'Rua yyy, nºyy', '51 yyyyyyyyy', 2),
(3, 'Alice', 'Rua ccc, nºcc', '51 ccccccccc', 3);

CREATE TABLE medicamentos(
    codmedicamento int not null auto_increment PRIMARY key,
    nome varchar(80) not null,
    composicao varchar(150) not null,
    preco int not null
)

INSERT into medicamentos(codmedicamento, nome, composicao, preco)
values
(1, 'Paracetamol', 'xxxxxxxx', '20.50'),
(2, 'Ibuprofeno', 'yyyyyyyyy', '21.10'),
(3, 'Buscopan', 'cccccccc','25.25');

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
(1, '2021-05-16 15:34:05', 1, 1),
(2, '2021-08-10 10:10:15', 2, 2),
(3, '2021-10-29 07:45:40', 3, 3);

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
(1, 'Paracetamol 24 mg a cada 8 horas', 1, 1),
(2, 'Ibuprofeno 24 mg a cada 8 horas', 2, 2),
(3, 'Buscopan 24 mg a cada 8 horas', 3, 3);

-----------------------------------------------------

-- correção:
update medicamentos set preco = preco * 1.10
where composicao = 'F';

-- num total de consultas cadastradas
select  count(codconsulta) as total_de_consultas
from    consultas

-- listar os nomes dos medicamentos que tem preço acima da média
select  avg(preco) as media  
from    medicamentos

media
-----
67.98

select  nome
from    medicamentos
where   preco > (select  avg(preco) from    medicamentos)

---------------------------------------------------------
--Listar o nome e o telefone dos médicos da cidade de Torres:

select  m.nome as medico, m.telefone, c.nome as cidade
from    cidades c
          inner join medicos m
            on m.codcid_medicos = c.codcid

nome      telefone    cidade
-----------------------------
Julia     xxxxxxxx    torres
Camila    bbbbbbbb    passo de torres
Pedro     null        capão da canoa

-- Listar todos os nomes dos medicamentos, juntamente com a posologia prescritos na consulta de código 1

select  m.nome as medicamentos, p.posologia
from    medicamentos mdc
          inner join prescricao p
            on p.codmedicamento_prescricao = mdc.codmedicamento
where     p.codconsulta_prescricao = 1

--Listar todas as consultas com nome do médico, nome do paciente, data e hora
select  m.nome as medico, pc.nome as paciente, cl.data_hora
from  consultas cl
        inner join pacientes pc
          on pc.codpac = cl.codpac_consultas
        inner join medicos m
          on m.codmed = cl.codmed_consultas

--        ou         --
select  m.nome as medico, pc.nome as paciente, cl.data_hora
from  medicos m 
        inner join consultas cl 
          on m.codmed = cl.codmed_consultas
        inner join pacientes pc 
          on pc.codpac = cl.codpac_consultas

-- timestamp ou datetime = yyyy-mm-dd hh:mm:ss

-- Quais medicamentos a dr Julia utilizou nas suas consultas do mes de outubro de 2021. O codigo da Dr Julia é 3999
select mdc.codmedicamento as id_medicamento, mdc.nome as medicamento, m.nome as medico
from consultas cl
      inner join medicos m
        on m.codmed = cl.codmed_consultas
      inner join prescricao p
        on p.codconsulta_prescricao = cl.codconsulta
       inner join medicamentos mdc
       	on mdc.codmedicamento = p.codmedicamento_prescricao
where m.codmed = 3 and cl.data_hora between '2021/10/01' and '2021/10/30'

Tabelas utilizadas:
consultas, medicos, prescricao e medicamentos

id_medicamento    medicamento     medico
