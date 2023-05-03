create database triggers_terca;


CREATE TABLE setores
(
	id int auto_increment primary key,
    nome varchar(50) not null, 
    total_salario decimal(18,2) default 0
);
    
CREATE TABLE funcionarios
(
	id int auto_increment primary key,
    nome varchar(50) not null, 
    salario decimal(18,2) default 0,
    id_setor int,
    constraint funcionarios_setores_fk
		foreign key(id_setor) 
			references setores(id) 
				ON DELETE RESTRICT
                ON UPDATE CASCADE
);

select * from funcionarios
select * from setores

DELIMITER $$
CREATE TRIGGER trigger_saldo AFTER INSERT ON tabela
FOR EACH ROW
BEGIN
	
	-- commands
    
END $$
DELIMITER ;

-----triggers----
 DELIMITER $$
CREATE TRIGGER trigger_atualiza_total_salario_por_setor AFTER INSERT ON funcionarios
	FOR EACH ROW
BEGIN
	
	update setores set total_salario = total_salario + NEW.salario
    where id = NEW.id_setor;
    
END $$
DELIMITER ;

insert into funcionarios (nome, salario, id_setor) 
	values ('Airton', 3000,1), ('João', 2000,2), ('Rafaela', 1500,3);
    
    select * from setores

DELIMITER $$
CREATE TRIGGER trigger_atualiza_total_salario_por_setor_delete AFTER DELETE ON funcionarios
	FOR EACH ROW
BEGIN
	
	update setores set total_salario = total_salario - OLD.salario
    where id = OLD.id_setor;
    
END $$
DELIMITER ;

select * from funcionarios;
DELETE FROM funcionarios WHERE id = 1;
select * from setores;

DELIMITER $$
CREATE TRIGGER trigger_autaliza_total_salario_por_setor_update AFTER UPDATE ON funcionarios
	FOR EACH ROW
BEGIN
		
	update setores set total_salario = total_salario + (NEW.salario - OLD.salario)
    where id = NEW.id_setor;
    
END $$
DELIMITER ;

select * from funcionarios;
UPDATE funcionarios
SET id_setor = 1
WHERE id = 2;
select * from setores;

insert into setores (nome)
	values ('Dev'), ('Suporte'),('Finan');

insert into funcionarios (nome, salario, id_setor) 
	values ('Amilton', 3000,1), ('Joana', 2000,2), ('Rafael', 1500,3);
    
    SET autocommit=0;
    
    start transaction;
    
    insert into setores (nome) values ('devops');
    insert into funcionarios(nome, valor_salario, id_departamento)
    values ('Anita', 0, (select max(id) from setores));
    
    select * from setores;
    select * from funcionarios;
    
    drop trigger trigger_atualiza_total_salario;
    
    commit; -- confirma
    rollback; -- desfaz
    