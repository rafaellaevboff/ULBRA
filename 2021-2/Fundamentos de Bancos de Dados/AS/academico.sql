--TABELAS:
CREATE TABLE cidades(
    id serial primary key not null,
    nome varchar(100) not null,
    uf varchar(2) not null
)

CREATE TABLE professores(
    id SERIAL primary key not null,
    nome varchar(100) not null,
    email varchar(100) not null,
    endereco varchar(100) not null,
    cpf varchar(11) not null,
    idcid int not null,

    CONSTRAINT idcid_profs_fk
        FOREIGN KEY (idcid)
            REFERENCES cidades(id)
)

CREATE TABLE alunos(
    id serial not null PRIMARY key,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    telefone varchar(13) not null,
    idcid int not null,

    CONSTRAINT idcid_alunos_fk
        FOREIGN KEY (idcid)
            REFERENCES cidades(id)
)

CREATE TABLE cursos(
    id serial not null PRIMARY KEY,
    nome_curso varchar(100) not null,
    valor_credito int not null,
    idcid int not null, --adicionei idcid para fazer outra atividade do formulário

    CONSTRAINT idcid_cursos_fk
        FOREIGN KEY (idcid)
            REFERENCES cidades(id)
)

CREATE TABLE disciplinas(
    id serial not null PRIMARY key,
    nome varchar(100) not null
)

CREATE TABLE turmas(
    id serial not null PRIMARY key,
    sala int not null,
    capacidade int not null,
    idcurso INT not null,
    idprof INT not null,

    CONSTRAINT idcurso_turmas_fk
        FOREIGN KEY (idcurso)
            REFERENCES cursos(id),

    CONSTRAINT idprof_turmas_fk
        FOREIGN KEY (idprof)
            REFERENCES professores(id)
)

CREATE TABLE turdisc(
    idturma int not null,
    iddisc int not null,

    CONSTRAINT idturma_turdisc_fk
        FOREIGN KEY (idturma)
            REFERENCES turmas(id),

    CONSTRAINT iddisc_turdisc_fk
        FOREIGN KEY (iddisc)
            REFERENCES disciplinas(id)
)

CREATE TABLE matriculas(
    data_matricula date not null, --adicionei data_matricula para fazer outra atividade do formulário
    idaluno int not null,
    idturma int not null,

    CONSTRAINT idaluno_matr_fk
        FOREIGN KEY (idaluno)
            REFERENCES alunos(id),

    CONSTRAINT idturma_matr_fk
        FOREIGN KEY (idturma)
            REFERENCES turmas(id)
)

--INSERTS - POPULAR AS TABELAS:
INSERT INTO cidades(nome, uf)
VALUES  ('Torres', 'RS'),
        ('Curitiba', 'PR'),
        ('Porto Alegre', 'RS'),
        ('Santo André', 'SP'),
        ('Natal', 'RN'),
        ('Petrópolis', 'RJ'),
        ('Blumenau', 'SC'),
        ('Boa Vista','RR'),
        ('Piracicaba', 'SP'),
        ('Cuiabá', 'MT');

INSERT INTO professores(nome, email, endereco, cpf, idcid)
VALUES  ('Tiago', 'tiago@gmail.com', 'Rua 1', 1234567890, 10),
        ('Cassia', 'cassia@gmail.com', 'Rua 2', 0987654321, 4),
        ('Pedro Henrique', 'pedrohenrique@gmail.com', 'Rua 3', 0192837465, 5),
        ('Madalena', 'madalena@gmail.com', 'Rua 4', 1029384756, 8),
        ('Ana Alice', 'anaalice@gmail.com', 'Rua 5', 9078563412, 1),
        ('Fabio', 'fabio@gmail.com', 'Rua 6', 1243568790, 9),
        ('Marcelo', 'marcelo@gmail.com', 'Rua 7', 123654789, 7),
        ('Carla', 'carla@gmail.com', 'Rua 8', 147258369, 2),
        ('Bruno', 'bruno@gmail.com', 'Rua 9', 741852963, 6),
        ('Sergio', 'sergio@gmail.com', 'Rua 10', 159734682, 3);

INSERT INTO alunos(nome,endereco,telefone,idcid)
VALUES  ('Yasmin','Rua 11',999876896,2),
        ('Emerson','Rua 22',288795038,5),
        ('Ingrid','Rua 33',998076548,8),
        ('Eduarda','Rua 44',998765409,7),
        ('Ricardo','Rua 55',998065437,3),
        ('Gustavo','Rua 66',999076589,1),
        ('Claudia','Rua 77',999067498,4),
        ('Davi','Rua 88',982078546,10),
        ('Elen','Rua 99',999099986,6),
        ('Amanda','Rua 100',999555967,9);

INSERT INTO cursos (nome_curso, valor_credito, idcid)
VALUES  ('Análise e Desenvolvimento de Sistemas', 75,10),
        ('Administração', 80,1),
        ('Odontologia', 75,2),
        ('Enfermagem', 80,3),
        ('Física', 85, 4),
        ('Ciências Contábeis', 70,5),
        ('Geografia', 75,6),
        ('História', 75,7),
        ('Fisioterapia', 70,8),
        ('Matemática', 80,9);

INSERT INTO disciplinas(nome)
VALUES  ('Fundamento de Banco de Dados'), 
        ('Gestão'),
        ('Farmacologia'),
        ('Anatomia'),
        ('Cálculo'),
        ('Gestão de pessoas'),
        ('Biogeografia'),
        ('Didática'),
        ('Genética'),
        ('Lógica');

INSERT INTO turmas(sala, capacidade, idcurso, idprof)
VALUES  (1, 70, 1, 7),
        (2, 80, 2, 6),
        (3, 90, 3, 4),
        (4, 100, 4, 5),
        (5, 70, 5, 9),
        (6, 80, 6, 8),
        (7, 90, 7, 10),
        (8, 100, 8, 1),
        (9, 70, 9, 3),
        (10, 80, 10, 2);

INSERT INTO turdisc(idturma,iddisc)
VALUES  (1,1),
        (2,2),
        (3,3),
        (4,4),
        (5,5),
        (6,6),
        (7,7),
        (8,8),
        (9,9),
        (10,10);

INSERT INTO matriculas(data_matricula, idaluno,idturma)
VALUES  ('2019-04-01',10,1),
        ('2019-05-04',9,2),
        ('2018-03-10',8,3),
        ('2019-12-04',7,4),
        ('2019-02-04',6,5),
        ('2019-12-10',5,6),
        ('2019-12-10',2,6),
        ('2017-12-04',4,7),
        ('2019-08-04',3,8),
        ('2019-12-06',2,9),
        ('2020-05-04',1,10);