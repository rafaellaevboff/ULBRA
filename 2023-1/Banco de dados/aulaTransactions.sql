create database aulaTransactionsç;

create table pessoa(
num_pessoa int primary key,
nome_email varchar(100)
);

    SET autocommit=0; -- preciso rodar só uma vez, mas se eu fechar o workbench e abrir de novo eu tenho q rodar ele de novo
    
    start transaction;
    
    insert into pessoa(num_pessoa, nome_email)
		values(78360, 'rst.marcondes@smail.com'),
		(78361, 'jcc.meirelles@jmail.com'),
		(78362, 'mjk.amadeus@imail.com');
        
    commit;
    
    SELECT * FROM pessoa;
    
CREATE TABLE pessoa_fisica (
  num_pessoa_pf INT NOT NULL,
  nom_pessoa VARCHAR(100) NOT NULL,
  num_CPF VARCHAR(11) NOT NULL,
  num_documento_identidade VARCHAR(20) NOT NULL,
  nom_orgao_emissor_doc_ident VARCHAR(50) NOT NULL,
  dat_nascimento DATE NOT NULL,
  idt_sexo CHAR(1) NOT NULL,
  cod_estado_civil INT NOT NULL,
  PRIMARY KEY (num_pessoa_pf)
);

start transaction;

INSERT INTO pessoa_fisica
(num_pessoa_pf, nom_pessoa, num_CPF, num_documento_identidade, nom_orgao_emissor_doc_ident, dat_nascimento, idt_sexo, cod_estado_civil)
VALUES
(78360, 'Roberto Marcondes', '99911122233', '19999888', 'SSP', '1988-03-15', 'M', 1),
(78361, 'Julio Meirellies', '99811233134', '18888999', 'SSP', '1975-02-17', 'M', 1),
(78362, 'Maria Rita Amadeu', '99711333235', '17777888', 'SSP', '1980-12-23', 'F', 1);

commit;

select * from pessoa_fisica;

-- Na tabela PESSOA_FISICA, altere o nome da pessoa física com código 78361 para “Júlio Meirelles” e o seu estado civil para 2
start transaction;

UPDATE pessoa_fisica
SET nom_pessoa = 'Júlio Meirelles', cod_estado_civil = 2
WHERE num_pessoa_pf = 78361;

-- consulte a alteração realizada no exercício 5
SELECT * FROM pessoa_fisica WHERE num_pessoa_pf = 78361;

-- Desfaça a operação (transação) do Exercício 5
rollback;

-- Consulte novamente o registro da tabela PESSOA_FISICA cujo código da pessoa seja igual a 78361.
SELECT * FROM pessoa_fisica WHERE num_pessoa_pf = 78361;

-- Qual foi o resultado da operação realizada no Exercício 8? Justifique.
-- A consulta realizada no exercício 8 retornou a pessoa com o código 78361 sem as alterações feitas no exercício 5, pois foi iniciada a transaction e setado os valores, 
-- porém não foi confirmado com commit o salvamento desses dados, ao dar rollback oq estava para ser salvo foi cancelado, assim fechando a transaction e não salvando os dados.

-- Refaça o exercício 5 e confirme a alteração.
start transaction;

UPDATE pessoa_fisica
SET nom_pessoa = 'Júlio Meirelles', cod_estado_civil = 2
WHERE num_pessoa_pf = 78361;

commit;

-- Exclua, da tabela PESSOA_FISICA, o registro com código de pessoa igual a 78362.
start transaction;

DELETE FROM pessoa_fisica WHERE num_pessoa_pf = 78362;

select * from pessoa_fisica;

-- Desfaça a transação realizada no Exercício 11.
rollback;

-- Altere o campo data de nascimento, da tabela PESSOA_FISICA, cujo código da pessoa seja 78362, para 13/01/1998.
start transaction;

UPDATE pessoa_fisica
SET dat_nascimento = '1998-01-13'
WHERE num_pessoa_pf = 78362;

-- Altere o campo número do RG, da tabela PESSOA_FISICA, cujo código da pessoa seja 78362, para 13321142.
UPDATE pessoa_fisica
SET num_documento_identidade = '13321142'
WHERE num_pessoa_pf = 78362;

select * from pessoa_fisica;

-- Desfaça as operações realizadas nos Exercícios 13 e 14.
rollback;

-- As transações realizadas nos Exercícios 13 e 14 poderiam ser realizadas em uma única operação? Escreva a instrução para isso e confirme a transação.
-- sim, poderiam, pois fazem parte da mesma tabela, para a mesma tupla e a transactions está aberta
start transaction;

UPDATE pessoa_fisica
SET num_documento_identidade = '13321142', dat_nascimento = '1998-01-13'
WHERE num_pessoa_pf = 78362;

commit;