--Explique o conceito Integridade Referencial. De um exemplo SQL DDL para ilustrar melhor a sua explicação, usando a modelagem relacional (“Academico”). 

/*
CONCEITO DE INTEGRIDADE REFERENCIAL:
O conceito de integridade referencial é manter a integridade dos dados do banco de dados.
Assim, é possível ter uma maior segurança de que o usuário não irá excluir/mudar coisas importantes que não poderiam ser modificadas.

ON DELETE - referencia-se a apagar os dados.
ON UPDATE - referencia-se a alterar os dados.

RESTRICT - não deixa apagar/alterar os dados na tabela "pai" se houver tabelas "filhas".
CASCADE - ao atualizar/apagar elementos da tabela "pai" irá ser apagado/mudado nas tabelas "filhas".
SET NULL - pode ser substituido por 'not null' na criação de cada coluna na tabela, ele é responsável por não deixar um campo nulo na tabela.
*/

--EXEMPLO:
CREATE TABLE cidades(
    id serial primary key not null,
    nome varchar(100) not null,
    uf varchar(2) not null

    ON DELETE RESTRICT
    ON UPDATE CASCADE
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

/* Nesse caso, uma cidade não poderá ser deletada na tabela pai(cidades) caso houver registro dela em outra(s) tabela(s). A cidade poderá ter alterações, por exemplo:
    Se a id do professor X for 3 e ela ser alterada para 5 na tabela cidades, a cidade do professor X vai ser 5 na tabela professores. */