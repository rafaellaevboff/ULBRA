-- refere às tabelas do arquivo sql05.sql

-- JUNTAR TABELAS
-- where       c.codcid = m.codcid_medicos
-- quando tiver mais de duas tabelas se coloca o and do lado e continua embaixo

-- PARA DAR UM "APELIDO" PARA AS TABELAS P USAR NO SELECT-FROM-WHERE USA-SE NO FROM A LETRA OU ABREVIAÇÃO DO LADO DA PALAVRA QUE DESEJA FAZER ESSA MUDANÇA

-- O AS É UM "APELIDO", NESSE EX O c.nome VAI SER CHAMADO DE CIDADE NA TABELA QUE IRÁ APARECER COMO RESULTADO

--É melhor colocar a tabela que tem menos tuplas primeiro, pq daí a consulta vai ser mais rápida

--LISTAR TODOS OS MÉDICOS E SUA RESPECTIVA CIDADE:
select      m.codcid, m.nome, m.codcid_medicos, c.nome as cidade
from        cidades c, medicos m
where       c.codcid = m.codcid_medicos

-- ESCREVER COM JOIN
--(é mais rápido q no outro, pois só vai trazer as cidades com medicos cadastrados, no outro primeiro aparece tudo até cidades sem médicos, depois que filtra as que tem médicos)
select      m.codcid, m.nome, m.codcid_medicos, c.nome as cidade
from        cidades c inner join medicos medicos
                ON. c.codcid = m.codmed

-- IRÁ MOSTRAR:
id      nome        codcid_medicos      cidade
------------------------------------------------------
1       cassio          1               torres
2       douglas         3            capao da canoa
3       mariana         4           passo de torres

--------------------------------------------------------------------------

-- MOSTRAR TAMBÉM AS CONSULTAS DESSES MÉDICOS DESTAS CIDADES:
--LISTAR TODOS OS MÉDICOS E SUA RESPECTIVA CIDADE:
select      m.codcid, m.nome, m.codcid_medicos, c.nome as cidade, c.data, c.valor
from        cidades c, medicos m, consultas cl
where       c.codcid = m.codcid_medicos and
            cl.codmed_consultas = m.codmed

-- ESCREVER COM JOIN
select      m.codcid, m.nome, m.codcid_medicos, c.nome as cidade, c.data, c.valor
FROM        cidades 
                INNER JOIN medicos m
                    ON m.codcid_medicos = c.codcid
                INNER JOIN consultas cl
                    ON cl.codmed_consultas = m.codmed


-- IRÁ MOSTRAR:
id      nome        codcid_medicos      cidade           data        valor
------------------------------------------------------
1       cassio          1               torres         2021-11-01     100
2       douglas         3            capao da canoa    2020-12-05      99
3       mariana         4           passo de torres    2020-05-19     500


--inner é de intersecção