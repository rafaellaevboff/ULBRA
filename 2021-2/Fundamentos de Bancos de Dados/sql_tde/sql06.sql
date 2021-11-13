-- outra forma de juntar tabelas, mas não muito utilizado
from medicos, cidades
where medicos.CidadeId = Cidades.id

INSERT into medicos(nome, fone, cidade_id)
values
('Pedro', 'xxxxxxx', 1),
('Ana', 'xxxxxxx', 2),
('Tiago', 'xxxxxxx', 3),
('João', 'xxxxxxx', 1),
('Patricia', 'xxxxxxx', 3),
('Maria', 'xxxxxxx', 2);

-- tabelas criadas: https://github.com/cassiocosta/FBD-2021-2/blob/master/Aula19-Joins.sql

-- EXERCÍCIOS:
-- 1 - todos os pacientes que o médico Rafael tem pra atender hoje;
-- 2 - todos os pacientes que temos para atender hoje;
-- 3 - valor total das consultas do mês de junho 2021;
-- 4- todos os pacientes da Médica Júlia e de qual cidade eles pertencem que tem consulta no mês de dezembro de 2021;
-- 5 - Todos os médicos que já atenderam algum paciente da cidade de Torres;
-- 6 Médico: Atendente, pf. ve qual foi a última vez que eu atendi a Rafaela e de qual cidade ela é.

-- Escolhi a 1
select  p.nome as pacientes
from    pacientes p
        inner join consultas c
          on p.id = c.paciente_id
        inner join medicos m
          on m.id = c.medico_id
where   data_consulta = '2021-11-12' and m.nome like "Rafael%"

-- considerando a id do médico 1225 substituo o m.nome like "Rafael%" por:
and m.id = 1225

--questão 2:
select  p.*
from    pacientes p
            inner join consultas c
                on p.id = c.paciente_id
where   data_consulta = current_date
-- o current_date pega a data atual do servidor

--questão 3:
select  sum(valor) as total_consultas
from    consultas c
where   c.data between '2021-06-01' and '2021-06-30'

-- questão 4:
select  p.*
from    pacientes p
            inner join consultas c
                on c.paciente_id = p.id
            inner join medicos m
                on m.id = c.medico_id 
where   m.nome like 'Julia%' and c.data between '2021-12-01' and '2021-12-31'
-- se a medica tiver id usar o id inves do nome do médico

-- questão 5:
select  m.nome as nome_medico, p.nome as nome_paciente, cd.nome as cidade
from    consultas c
            join medicos m
                on m.id = c.medico_id
            join pacientes p
                on p.id = c.paciente_id
            join cidades cd
                on cd.id = p.CidadeId
where   p.cidade_id = 3;

--questão 6
select  paciente_id, data, medico_id, cid.id
from    consultas c
            inner join pacientes p 
                on p.id = c.paciente_id
            inner join cidades cid
                on cid.id = p.cidade_id
where   p.id = 3456

-- começar no from com a tabela que tiver menos tuplas (dar prioridade a q tiver menos tuplas, n vai precisar carregar tantos dados)