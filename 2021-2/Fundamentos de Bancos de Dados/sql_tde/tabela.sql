CREATE TABLE colaboradores
(
    id int not null,
    nome varchar(100) not null,
    n_matricula int not null,
    endereco_email varchar(100) not null,
    senha_login int not null,
)

CREATE TABLE projetos
(
    id int not null,
    estimativa_horas float not null,
    descricao varchar(200) not null,
    nome varchar not null,
    constraint id_tipo_projeto
        foreing key(id_ps)
            references projetos_sociais(id)
        foreing key(id_pmp)
            references projetos_melhoria_de_processo(id)

    constraint registra_projeto
        foreing key(colaborador_projeto)
            references colaboradores(id)
    constraint participa_projeto
        foreing key(participa_projeto)
            references participantes_projetos(id)

    constraint comentarios_projeto
        foreign key(id_comentarios)
            references comentarios(id)
)

CREATE TABLE participantes_projetos
(
    id int not null,
    constraint participante1
        foreign key(id_colaborador1)
            references colaboradores(id)
    constraint participante2
        foreign key(id_colaborador2)
            references colaboradores(id)
    constraint participante3
        foreign key(id_colaborador3)
            references colaboradores(id)
)

CREATE TABLE projetos_sociais
(
    id int not null,
    publico_beneficiario varchar(100) not null,
)

CREATE TABLE projetos_melhoria_de_processo
(
    id int not null,
    resultados_esperados int not null,
    departamento varchar(100) not null,
)

CREATE TABLE comentarios
(
    id int not null,
    conteudo varchar(200) not null,
    data_hora datetime not null,

    constraint colaborador_comentario
        foreing key(colaborador_comentou)
            references colaboradores(id)
)